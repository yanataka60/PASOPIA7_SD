BBIOS		EQU		0005H

;			BCALL	1			;キースキャン A=文字コード CY=1:データなし
;			BCALL	5			;CURSOR ON
;			BCALL	11			;キーバッファクリア
;			BCALL	35			;SCREEN SIZE	Bレジスタに40,80
;			BCALL	47			;1文字出力		B<-ASCII
;			BCALL	48			;文字列表示		HL=文字列 DE=長さ
;			BCALL	50			;画面クリア		B=0:全画面クリア 1:テキストクリア 2:グラフィッククリア 3:全VRAMクリア

RENUM		EQU		1692H		;BASICプログラムの次行アドレス情報を更新?し、BASICに戻る

BASICST		EQU		0F375H		;BASICテキスト開始番地
BASICEND	EQU		0F7C9H		;BASICテキスト最終番地+1
TEXTEND		EQU		0F7A1H		;BASICテキストエリア最終番地+1

LBUF		EQU		0FC25H		;LBUF

;PASOPIA7
PPI_A		EQU		0F8H
PPI_B		EQU		PPI_A+1
PPI_C		EQU		PPI_A+2
PPI_R		EQU		PPI_A+3

;PASOPIA7
;8255 PORT アドレス F8H～FBH
;0F8H PORTA 送信データ(下位4ビット)
;0F9H PORTB 受信データ(8ビット)
;0FAH PORTC Bit

;7 IN  CHK
;6 IN
;5 IN
;4 IN 
;3 OUT
;2 OUT FLG
;1 OUT
;0 OUT
;
;FBH コントロールレジスタ

;DIRLISTコマンド	21H
;BINARY LOAD 		22H
;BASIC	LOAD		23H
;BINARY SAVE		24H
;BASIC  SAVE		25H


;****** MACRO BIOS CALL *************
BCALL	MACRO	a1
		LD		C,a1
		CALL	BBIOS
		ENDM

		ORG		0E800H

;		ORG		0E800H-2		;デバッグ用
;		DW		PEND-START0		;デバッグ用

START0:	JP		START
START1:	JP		BCAL
START2:	JP		INIT

;*********** SMコマンド(機械語プログラムのSAVE) ******************************
MSAVE:							;メインメモリ(裏RAM)の機械語をSD-CARDへSAVE
		INC		DE
		CALL	STFN			;SPACE読み飛ばし
		CALL	HLHEX			;セーブ開始アドレス変換
		JP		C,HEXERR
		LD		(WRKST),HL
		INC		DE
		CALL	HLHEX			;セーブ終了アドレス変換
		JP		C,HEXERR
		LD		(WRKNX),HL
		INC		DE
		PUSH	DE
		
		LD		HL,(WRKST)		;セーブ終了がセーブ開始より大きくなければエラー
		LD		DE,(WRKNX)
		XOR		A
		SBC		HL,DE
		POP		DE
		LD		A,0E2H			;ERRMSG
		JP		NC,ERR

		LD		A,24H			;LOADコマンド24H
		CALL	STCD			;コマンドコード送信
		AND		A				;00以外ならERROR
		JP		NZ,ERR

		PUSH	DE
		CALL	STFS			;ファイルネーム送信
		POP		DE
		AND		A				;00以外ならERROR
		JP		NZ,ERR
		LD		HL,MSG_MS		;Savingメッセージ
		CALL	LINEPR
		CALL	STRCNV
		CALL	LINEPR			;ファイルネーム表示
		CALL	CRLF
		LD		A,(WRKNX)		;セーブ終了アドレス送信:ファイル長はArduino側で計算
		CALL	SNDBYTE
		LD		A,(WRKNX+1)
		CALL	SNDBYTE
		LD		A,(WRKST)		;セーブ開始アドレス送信
		CALL	SNDBYTE
		LD		A,(WRKST+1)
		CALL	SNDBYTE
		
		LD		HL,(WRKST)		;セーブ開始アドレス
		LD		DE,(WRKNX)		;セーブ終了アドレス
MS1:	LD		A,(HL)
		CALL	SNDBYTE
		LD		A,L
		CALL	PRTDOT			;経過表示
		XOR		A
		PUSH	HL
		SBC		HL,DE
		POP		HL
		JR		Z,MS2
		INC		HL
		JR		MS1				;セーブ終了アドレスまでループ
		
MS2:	CALL	CRLF
		JP		ST2

;************* SBコマンド(BASICプログラムのSAVE) **************************
BSAVE:
		PUSH	DE
		LD		HL,(BASICST)
		INC		HL
		INC		HL
		LD		DE,(BASICEND)
		XOR		A
		SBC		HL,DE			;(BASICST)+2-(BASICEND)=0ならBASICプログラム無し
		LD		A,H
		OR		L
		POP		DE
		JR		Z,BSERR			;BASICプログラム無しERRへ
		INC		DE
		LD		A,25H			;LOADコマンド25H
		CALL	STCD			;コマンドコード送信
		AND		A				;00以外ならERROR
		JP		NZ,ERR
		CALL	STFN			;SPACE読み飛ばし
		PUSH	DE
		CALL	STFS			;ファイルネーム送信
		POP		DE
		AND		A				;00以外ならERROR
		JP		NZ,ERR
		LD		HL,MSG_BS		;Loadingメッセージ
		CALL	LINEPR
		CALL	STRCNV
		CALL	LINEPR			;ファイルネーム表示
		CALL	CRLF
		LD		HL,(BASICEND)
		LD		DE,(BASICST)
		XOR		A
		SBC		HL,DE			;ファイル長を計算
		LD		A,L				;ファイル長送信:L
		CALL	SNDBYTE
		LD		A,H				;ファイル長送信:H
		CALL	SNDBYTE
		EX		DE,HL			;開始アドレス:HL、ファイル長:DE
BS4:	LD		A,(HL)			;実データ送信
		CALL	SNDBYTE
		INC		HL
		DEC		DE
		LD		A,E
		CALL	PRTDOT			;経過表示
		LD		A,E
		OR		D
		JR		NZ,BS4
		CALL	CRLF
		JP		ST2
BSERR:
		LD		A,0E1H			;BASIC PROGRAM無しエラーを表示
		JP		ERR

INIT:
;**** 8255初期化 ****
;PORTC下位BITをOUTPUT、上位BITをINPUT、PORTBをINPUT、PORTAをOUTPUT
		LD		A,8AH
		OUT		(PPI_R),A
;出力BITをリセット
		XOR		A				;PORTA <- 0
		OUT		(PPI_A),A
		OUT		(PPI_C),A		;PORTC <- 0

;*************** PASOPIA7_SD初期化メッセージ *************************
INIT1:
		LD		HL,MSG_INIT
		CALL	LINEPR
		RET

;******************* ここから以降を上書きしなければLM,LB,SD等プログラムのLOADは使用可能(E8FC)
;************ SDコマンド(SD DIRECTORY LIST) **********************
SDIR:							;SD-CARD FILES一覧
		INC		DE
		LD		A,(DE)
		CP		00H				;00Hならファイル名無し
		JR		Z,SDIR1
		CALL	STFN			;SPACE読み飛ばし
SDIR1:
		CALL	DIRLIST			;DIRLIST本体をコール
		JR		Z,SDIR2			;00ならHLにセットされているファイル名でLM又はLBコマンドを実行
		CP		01H				;01なら通常リターン
		JP		NZ,ERR			;00,01以外ならERROR
		CALL	RCVBYTE			;拡張子判定読み飛ばし
		JP		ST2

SDIR2:
		DEC		DE
		CALL	RCVBYTE			;選択ファイルの拡張子受信:0,BIN 1,BAS 2,FPT 3,その他
		CP		00H
		JP		Z,MLOAD			;BINならMLOADへ
		CP		01H
		JP		Z,BLOAD			;BASならBLOADへ
		LD		A,0E3H
		JP		ERR				;以外はERROR

;**** DIRLIST本体  ****
;****              戻り値 A=エラーコード ****
DIRLIST:
		LD		A,21H			;DIRLISTコマンド21Hを送信
		CALL	STCD			;コマンドコード送信
		AND		A				;00以外ならERROR
		JP		NZ,DLRET
		
		PUSH	BC
		LD		B,21H			;ファイルネーム検索文字列33文字分を送信
STLT1:	LD		A,(DE)
		CALL	SNDBYTE			;ファイルネーム検索文字列を送信
		INC		DE
STLT4:	DJNZ	STLT1
		POP		BC
		CALL	RCVBYTE			;状態取得(00H=OK)
		AND		A				;00以外ならERROR
		JP		NZ,DLRET

DL1:	LD		HL,LBUF
DL2:	CALL	RCVBYTE			;'00H'を受信するまでを一行とする
		AND		A
		JR		Z,DL3
		CP		0FFH			;'0FFH'を受信したら終了
		JR		Z,DL4
		CP		0FDH			;'0FDH'受信で選択した文字列をファイルネームとして取得して終了
		JR		Z,DL9
		CP		0FEH			;'0FEH'を受信したら一時停止して一文字入力待ち
		JR		Z,DL5
		LD		(HL),A
		INC		HL
		JR		DL2
DL3:	LD		(HL),00H
		LD		DE,LBUF			;'00H'を受信したら一行分を表示して改行
		CALL	STRCNV
		CALL	LINEPR			;ファイルネーム表示
DL33:
		CALL	CRLF			;改行
		JR		DL1
DL4:
		CALL	RCVBYTE			;状態取得(00H=OK)
		LD		A,01H
		AND		A				;00以外ならERROR
		JR		DLRET

DL9:	CALL	CRLF			;改行
		
		LD		HL,LBUF			;選択したファイルネームを再度取得
DL91:	CALL	RCVBYTE
		LD		(HL),A
		CP		00H
		INC		HL
		JR		NZ,DL91

		LD		DE,LBUF			;取得したファイルネームを表示
		CALL	STRCNV
		CALL	LINEPR			;ファイルネーム表示
		CALL	CRLF
		CALL	RCVBYTE			;状態取得読み飛ばし
		CALL	RCVBYTE			;状態取得(00H=OK)

		LD		DE,LBUF			;取得したファイルネーム
		AND		A				;00以外ならERROR
		JR		DLRET

DL5:
		LD		HL,MSG_KEY1		;HIT ANT KEY表示
		CALL	LINEPR
DL6:
		BCALL	11				;キーバッファクリア
DL60:	BCALL	1				;1文字入力
		JR		C,DL60
		CALL	CAPS
		CP		13H				;TABで打ち切り
		JR		Z,DL7
		CP		1BH				;ESCで打ち切り
		JR		Z,DL7
		CP		30H				;数字0～9ならそのままArduinoへ送信してSETL処理へ
		JR		C,DL61
		CP		3AH
		JR		C,DL8
DL61:
		CP		42H				;「B」で前ページ
		JR		Z,DL8
		CP		08H				;DELキーで前ページ
		JR		Z,DL63
		CP		1DH				;左カーソルキーで前ページ
		JR		Z,DL63
		CP		1EH				;上カーソルキーで前ページ
		JR		Z,DL63
		JR		DL62
DL63:	LD		A,42H
		JR		DL8
DL62:	XOR		A				;それ以外で継続
		JR		DL8
DL7:	LD		A,0FFH			;0FFH中断コードを送信
DL8:	CALL	SNDBYTE
		JP		DL1
		
DLRET:	RET

;************** エラー内容表示 *****************************
ERR:
ERR_E0:
		CP		0E0H
		JR		NZ,ERR_E1
		LD		HL,MSG_E0
		JR		ERRMSG
ERR_E1:	CP		0E1H
		JR		NZ,ERR_E3
		LD		HL,MSG_E1
		JR		ERRMSG
ERR_E3:	CP		0E3H
		JR		NZ,ERR_F0
		LD		HL,MSG_E3
		JR		ERRMSG
ERR_F0:	CP		0F0H
		JR		NZ,ERR3
		LD		HL,MSG_F0		;SD-CARD INITIALIZE ERROR
		JR		ERRMSG
ERR3:	CP		0F1H
		JR		NZ,ERR99
		LD		HL,MSG_F1		;NOT FIND FILE
		JR		ERRMSG
ERR99:	LD		DE,LBUF
		CALL	HEX1
		LD		HL,LBUF
		LD		B,(HL)
		BCALL	47				;1文字出力		B<-ASCII
		INC		HL
		LD		B,(HL)
		BCALL	47				;1文字出力		B<-ASCII
		LD		HL,MSG_FF		;その他ERROR
ERRMSG:	CALL	LINEPR
		CALL	CRLF
		JP		ST2

;**** ファイルネーム送信(IN:DE ファイルネームの先頭) ******
STFS:	LD		B,20H
STFS1:	LD		A,(DE)			;FNAME送信
		CALL	SNDBYTE
		INC		DE
		DJNZ	STFS1
		LD		A,00H
		CALL	SNDBYTE
		CALL	RCVBYTE			;状態取得(00H=OK)
		RET

WRKST:		DS		2
WRKNX:		DS		2

MSG_INIT:	DB		MSG_INIT_END-MSG_INIT-1,'**** PASOPIA7_SD Initialize Ok! ****',0DH,0AH
MSG_INIT_END:

MSG_CMD:
			DB		MSG_CMD_END-MSG_CMD-1,'COMMAND FAILED!',0DH,0AH
			DB		' LM str: Load Binary',0DH,0AH
			DB		' LG str: Load Binary And Exe',0DH,0AH
			DB		' LB str: Load Basic',0DH,0AH
			DB		' SM xxxx,yyyy,zzzz,str: Save Binary',0DH,0AH
			DB		' SB str: Save Basic',0DH,0AH
			DB		' SD str: SD Dir',0DH,0AH
			DB		' J x   : Exe Program',0DH,0AH
			DB		' Q or B: Return Basic',0DH,0AH
MSG_CMD_END:

MSG_KEY1:
			DB		MSG_KEY1_END-MSG_KEY1-1,'SEL:0-9 NEXT:ANY BACK:B or BS BREAK:ESC',0DH,0AH
MSG_KEY1_END:

MSG_BL:		DB		MSG_BL_END-MSG_BL-1,'Basic Program Loading:'
MSG_BL_END:

MSG_MS:		DB		MSG_MS_END-MSG_MS-1,'Binary Saving:'
MSG_MS_END:

MSG_BS:		DB		MSG_BS_END-MSG_BS-1,'Basic Program Saving:'
MSG_BS_END:

MSG_E0:		DB		MSG_E0_END-MSG_E0-1,'Basic Program Text Erea Over!',0DH,0AH
MSG_E0_END:

MSG_E1:		DB		MSG_E1_END-MSG_E1-1,'Basic Program Nothing!',0DH,0AH
MSG_E1_END:

MSG_E3:		DB		MSG_E3_END-MSG_E3-1,'Not Load This EXT File!',0DH,0AH
MSG_E3_END:

MSG_F0:		DB		MSG_F0_END-MSG_F0-1,'SD-CARD Initialize Error!'
MSG_F0_END:

MSG_F1:		DB		MSG_F1_END-MSG_F1-1,'Not Find Filename Error!'
MSG_F1_END:

MSG_FF:		DB		MSG_FF_END-MSG_FF-1,'Error'
MSG_FF_END:


;********** Aレジスタ 小文字 -> 大文字変換 ****************
CAPS:	CP		'a'
		RET		C
		CP		'z'+1
		RET		NC
		AND		0DFH
		RET

;********** (DE)からの文字列を00Hが現れるまで文字数カウントし、(DE-1)に文字数をセット及び HL=DE-1 *****
STRCNV:	PUSH	DE
		PUSH	BC
		PUSH	AF
		LD		B,21H
		LD		C,00H
		LD		H,D
		LD		L,E
		DEC		HL
SC1:	LD		A,(DE)
		AND		A
		JR		Z,SC2
		INC		DE
		INC		C
		DJNZ	SC1
SC2:	LD		A,C
		LD		(HL),A
		POP		AF
		POP		BC
		POP		DE
		RET

;******************* ここから以降を上書きしなければLOAD後にJコマンドで実行可能(EC54)
;******* コマンド入力 *******************:
START:	BCALL	05				;CURSOR ON
ST1:	LD		HL,TITLE		;タイトル表示
		CALL	LINEPR
ST2:	CALL	LINPUT
		LD		DE,LBUF
		LD		A,(DE)
		CALL	CAPS			;大文字変換
		INC		DE
		CP		'L'
		JR		NZ,CMD1
		LD		A,(DE)
		CALL	CAPS			;大文字変換
		CP		'M'				;LMコマンド
		JP		Z,MLOAD
		CP		'B'				;LBコマンド
		JP		Z,BLOAD
		CP		'G'				;LGコマンド
		JP		Z,MEXE
		JR		CMD9
CMD1:	CP		'S'
		JR		NZ,CMD9
		LD		A,(DE)
		CALL	CAPS			;大文字変換
		CP		'M'				;SMコマンド
		JP		Z,MSAVE
		CP		'B'				;SBコマンド
		JP		Z,BSAVE
		CP		'D'				;SDコマンド
		JP		Z,SDIR
		JR		CMDERR
CMD9:	CP		'Q'				;Qコマンド
		RET		Z
		CP		'B'				;Bコマンド
		RET		Z
		CP		'J'				;Jコマンド
		JP		Z,JUMP

CMDERR:	LD		HL,MSG_CMD		;コマンドエラーMSG
		CALL	LINEPR
		JR		ST2

TITLE:		DB		TITLE_END-TITLE-1,'    ***** PASOPIA7_SD Launcher *****',0DH,0AH,0AH
TITLE_END:

;******** 1行入力ルーチン ***********************
;              BS,カーソル右キーによる文字訂正のみ有効
LINPUT:
		LD		HL,PRMPT		;プロンプト表示'SD)'
		CALL	LINEPR
		BCALL	11				;キーバッファクリア
		LD		DE,LBUF
LI2:	BCALL	1				;1文字入力
		JR		C,LI2
		LD		B,A
		BCALL	47				;入力文字表示
		CP		0DH				;改行なら終了
		JR		Z,LEND
		CP		1DH				;カーソル左処理
		JR		NZ,LI4
LI3:	DEC		DE
		LD		B,' '			;カーソル位置の文字を空白に置き換え
		BCALL	47				;1文字出力		B<-ASCII
		LD		B,1DH			;もう一回カーソル左
		BCALL	47				;1文字出力		B<-ASCII
		JR		LI2
LI4:	CP		08H				;BS処理
		JR		NZ,LI5
		LD		B,1DH			;カーソル左
		BCALL	47				;1文字出力		B<-ASCII
		JR		LI3				;カーソル左と同様に処理
LI5:	CP		20H				;コントロール文字ならLBUFに書き込まない
		JR		C,LI2
		CALL	LICHK
		LD		(DE),A
		INC		DE
		JR		LI2
LEND:	XOR		A				;0DHを00Hに置き換えて終了
		CALL	LICHK
		LD		(DE),A
		CALL	CRLF
		RET
LICHK:
		LD		HL,LBUF			;カーソル左、BS処理でLBUF先頭を超えては戻らないようにチェック
		SBC		HL,DE
		JR		C,LICHK1
		LD		DE,LBUF
LICHK1:
		RET

PRMPT:		DB		PRMPT_END-PRMPT-1,'SD)'
PRMPT_END:

;*********** Jコマンド(16進数4桁のアドレスへJUMP) ***********************
JUMP:	CALL	STFN
		LD		A,(DE)			;Jだけなら(EXEADR)を取得
		AND		A
		JR		NZ,JP2
		LD		HL,(EXEADR)
		JR		JP3
JP2:	CALL	HLHEX			;(DE)からの16進数4桁文字列を16進数に変換してHLへ
		JR		C,HEXERR
JP3:	XOR		A
		PUSH	HL
		LD		DE,8000H		;実行アドレスが8000H未満なら裏RAMを有効にしてジャンプ
		SBC		HL,DE
		JR		C,GT1
		POP		HL
		JP		(HL)
GT1:	POP		HL
		CALL	M2RET			;メモリモード(RAM ON)
		JP		(HL)

HEXERR:	
		LD		HL,HEXMSG
		CALL	LINEPR
		JP		ST2

HEXMSG:		DB		HEXMSG_END-HEXMSG-1,'HEX ERROR',0DH,0AH
HEXMSG_END:

;**** DEからの4Byteが16進数を表すアスキーコードであれば16進数に変換してHLに代入 **************
HLHEX:	LD		HL,0000H
		LD		B,04H
HLHEX1:	LD		A,(DE)
		INC		DE
		CALL	CAPS			;大文字変換
		CALL	HEXCHK			;16進数を表すASCII文字かチェック
		JR		C,HLHEX2		;違ったらCF=1で終了
		CALL	BINCV4			;16進数へ変換
		DJNZ	HLHEX1			;4文字分ループ
HLHEX2:	RET

;*********************** 16進コード・チェック ****************************
HEXCHK:	CP		30H				;30H～39H
		JR		C,HC04
		CP		3AH
		JR		NC,HC02
		JR		HC03
HC02:	CP		41H				;41H～46H
		JR		C,HC04
		CP		47H
		JR		NC,HC04
HC03:	OR		A
		JR		HC05
HC04:	SCF
HC05:	RET

;********************** 16進コードからバイナリ形式への変換 ********************
BINCV4:	PUSH	AF
		CP		3AH
		JR		NC,BC01
		SUB		30H				;30H～39Hなら30Hを引く
		JR		BC02
BC01:	SUB		37H				;41H～46Hなら37Hを引く
BC02:	SLA		A				;左へ4回シフト
		SLA		A
		SLA		A
		SLA		A

		RLA						;Aレジスタ、HLレジスタをまとめて左へ4回シフト
		RL		L
		RL		H
		RLA
		RL		L
		RL		H
		RLA
		RL		L
		RL		H
		RLA
		RL		L
		RL		H
		
		POP		AF
		RET

;******************* ここから以降を上書きしなければBASICプログラムのLOADは可能(EDC6)
;***************** LBコマンド(BASICプログラムのLOAD) **************************
BLOAD:
		INC		DE
		LD		A,23H			;LOADコマンド18H
		CALL	STCD			;コマンドコード送信
		AND		A				;00以外ならERROR
		JP		NZ,ERR

		CALL	STFN			;SPACE読み飛ばし
		PUSH	DE
		CALL	STFS			;ファイルネーム送信
		POP		DE
		AND		A				;00以外ならERROR
		JP		NZ,ERR
		LD		HL,MSG_BL		;Loadingメッセージ
		CALL	LINEPR
		CALL	STRCNV
		CALL	LINEPR			;ファイルネーム表示
		CALL	CRLF

		CALL	RCVBYTE			;ファイル長受信
		LD		E,A
		CALL	RCVBYTE
		LD		D,A
		
		LD		HL,(BASICEND)	;BASICプログラムがRAMENDを超えないかチェック
		ADD		HL,DE
		LD		BC,(TEXTEND)
		XOR		A
		SBC		HL,BC
		JR		NC,BLERR		;超えるようであれば処理打ち切り
		LD		HL,(BASICST)
		XOR		A
		CALL	SNDBYTE			;処理継続指示

BL2:	
		CALL	RCVBYTE			;データ受信
		LD		(HL),A
		INC		HL
		DEC		DE
		LD		A,E
		CALL	PRTDOT			;経過表示
		LD		A,E
		OR		D
		JR		NZ,BL2			;ファイル長分をループ
		CALL	CRLF
		XOR		A
		LD		(HL),A			;最後にENDマーク書き込み
		
		LD		(BASICEND),HL	;BASICテキスト最終アドレス+1をセット
		LD		(BASICEND+2),HL
		LD		(BASICEND+4),HL
		
		LD		HL,MSG_BL2
		CALL	LINEPR
		CALL	CRLF

		POP		HL
		LD		HL,(BASICST)
		PUSH	HL
		JP		RENUM			;LBコマンドでLOADされたBASICプログラムの次行アドレス情報を更新?し、BASICに戻る

BLERR:
		LD		A,0E0H			;AREA OVERエラーを表示
		PUSH	AF
		CALL	SNDBYTE
		POP		AF
		JP		ERR

MSG_BL2:	DB		MSG_BL2_END-MSG_BL2-1,'Load Ok,Return BASIC'
MSG_BL2_END:

;********** 文字列表示 HL=文字列 DE=文字数 ******************
LINEPR:	PUSH	HL
		PUSH	DE
		LD		D,00H
		LD		E,(HL)
		INC		HL
		BCALL	48				;文字列表示		HL=文字列 DE=長さ
		POP		DE
		POP		HL
		RET

;******************* ここから以降を上書きしなければBASIC中からの機械語ロード可能(EE61)
;************* BASIC中からの機械語ロード *****************
;                     CALL &HE003:REM filenameと記述する
BCAL:
		INC		HL				;REM文をスキップ
		LD		A,(HL)
		CP		3AH
		JR		NZ,BC1
		INC		HL
		INC		HL
BC1:	INC		HL				;REM文の後ろに書かれているfilenameの先頭アドレスを取得
		LD		A,22H			;LOADコマンド22H
		CALL	STCD			;コマンドコード送信
		AND		A				;00以外ならERROR
		JP		NZ,ERR
		EX		DE,HL
		CALL	STFN			;SPACE読み飛ばし
		PUSH	DE
		CALL	STFS			;ファイルネーム送信
		POP		DE
		AND		A				;00以外ならERROR
		JP		NZ,ERR
		JP		ML4

;**** コマンド送信 (IN:A コマンドコード)****
STCD:	CALL	SNDBYTE			;Aレジスタのコマンドコードを送信
		CALL	RCVBYTE			;状態取得(00H=OK)
		RET

;****** FILE NAMEが取得できるまでスペースを読み飛ばし (IN:DE コマンド文字の次の文字 OUT:DE ファイルネームの先頭)*********
STFN:	PUSH	AF
STFN1:	LD		A,(DE)
		CP		20H
		JR		NZ,STFN3
		INC		DE				;ファイルネームまでスペース読み飛ばし
		JR		STFN1
STFN3:	POP		AF
		RET

;********* 機械語ロード本体 ********************************
ML1:
		INC		DE
		CALL	STFN
		LD		A,22H			;LOAD コマンド22Hを送信
		CALL	STCD
		AND		A				;00以外ならERROR
		RET		NZ
		PUSH	DE
		CALL	STFS			;ファイルネーム送信
		POP		DE
		AND		A				;00以外ならERROR
		RET		NZ
		
ML4:
		LD		HL,LDMSG1		;Loadingメッセージ
		CALL	LINEPR

		CALL	STRCNV
		CALL	LINEPR			;ファイルネーム表示

		CALL	RCVBYTE			;ファイル長受信
		LD		E,A
		CALL	RCVBYTE
		LD		D,A

		LD		B,'('
		BCALL	47				;1文字出力		B<-ASCII
		CALL	RCVBYTE			;書き込み先頭アドレス受信
		LD		L,A
		CALL	RCVBYTE
		LD		H,A
		LD		(EXEADR),HL
		CALL	HLPRT
		LD		B,'-'
		BCALL	47				;1文字出力		B<-ASCII

		PUSH	HL
		ADD		HL,DE
		DEC		HL
		CALL	HLPRT
		POP		HL
		LD		B,')'
		BCALL	47				;1文字出力		B<-ASCII

		LD		B,'.'
;******************* ここから以降を上書きしなければLGコマンドでロード実行可能(EEE7)
DBRLOP:	CALL	RCVBYTE			;データ受信
		LD		(HL),A
		DEC		DE
		LD		A,E
		AND		A
		JR		NZ,DR1
		BCALL	47				;1文字出力		B<-ASCII

DR1:	LD		A,D
		OR		E
		INC		HL
		JR		NZ,DBRLOP   	;DE=0までLOOP
		CALL	CRLF
		XOR		A
		RET

LDMSG1:		DB		LDMSG1_END-LDMSG1-1,'BINARY LOADING:'
LDMSG1_END:

;********** LGコマンド(機械語プログラムのLOAD、実行番地へのJUMP) ****************
MEXE:
		CALL	ML1
		AND		A
		JP		NZ,ERR
ML6:	LD		HL,(EXEADR)

		XOR		A
		PUSH	HL
		LD		DE,8000H		;実行アドレスが8000H未満なら裏RAMを有効にしてジャンプ
		SBC		HL,DE
		JR		C,ME1
		POP		HL
		JP		(HL)
ME1:	POP		HL
		CALL	M2RET			;メモリモード(RAM ON)
		JP		(HL)

;*************** RAM ON ******************************
M2RET:	LD		A,02H			;RAM ON
		OUT		(3CH),A
		RET

;************* 改行 **************************
CRLF:	PUSH	HL
		LD		HL,CRLFMSG
		CALL	LINEPR
		POP		HL
		RET

CRLFMSG:	DB		02H,0DH,0AH

;**** HLの内容を16進数4桁で表示 ********
HLPRT:	PUSH	DE
		PUSH	HL
		PUSH	AF
		LD		DE,LBUF+1
		CALL	HEX
		LD		HL,LBUF
		LD		A,04H
		LD		(HL),A
		CALL	LINEPR
		POP		AF
		POP		HL
		POP		DE
		RET

;**************** BIN2HEX2 HL <- BINARY ASCII -> (DE) DE+4 **************
HEX:	LD		A,H
		CALL	HEX1
		LD		A,L

;**************** BIN2HEX  A <- BINARY ASCII -> (DE) DE+2 ***************
HEX1:	PUSH	AF
		RRCA
		RRCA
		RRCA
		RRCA
		CALL	HEX2
		POP		AF
HEX2:	AND		0FH
		CP		0AH
		JR		NC,HEX3
		ADD		A,0F9H
HEX3:	ADD		A,37H
		LD		(DE),A
		INC		DE
		RET

;*********** LMコマンド(機械語プログラムのLOAD) ***********************
MLOAD:							;SD-CARDからLOAD 拡張子BIN
		CALL	ML1
		AND		A
		JP		NZ,ERR
		LD		DE,START		;LOAD最終番地(HL)がST4(EC57h)より大きければ
								;ST2に戻っても無意味なので実行番地から実行
		XOR 	A
		SBC		HL,DE
		JR		C,ML5
		JR		ML6
ML5:	JP		ST2

EXEADR:		DS		2

;************* SAVE、LOAD 進行状況用DOT表示 **********************
PRTDOT:	AND		A
		JR		NZ,PD1
		LD		B,'.'
		BCALL	47				;1文字出力		B<-ASCII
PD1:	RET

;**** 1BYTE受信 ****
;受信DATAをAレジスタにセットしてリターン
RCVBYTE:
		CALL	F1CHK 			;PORTC BIT7が1になるまでLOOP
		IN		A,(PPI_B)		;PORTB -> A
		PUSH 	AF
		LD		A,05H
		OUT		(PPI_R),A		;PORTC BIT2 <- 1
		CALL	F2CHK			;PORTC BIT7が0になるまでLOOP
		LD		A,04H
		OUT		(PPI_R),A		;PORTC BIT2 <- 0
		POP 	AF
		RET
		
;**** 1BYTE送信 ****
;Aレジスタの内容をPORTA下位4BITに4BITずつ送信
SNDBYTE:
		PUSH	AF
		RRA
		RRA
		RRA
		RRA
		AND		0FH
		CALL	SND4BIT
		POP		AF
		AND		0FH
		CALL	SND4BIT
		RET

;**** 4BIT送信 ****
;Aレジスタ下位4ビットを送信する
SND4BIT:
		OUT		(PPI_A),A
		LD		A,05H
		OUT		(PPI_R),A		;PORTC BIT2 <- 1
		CALL	F1CHK			;PORTC BIT7が1になるまでLOOP
		LD		A,04H
		OUT		(PPI_R),A		;PORTC BIT2 <- 0
		CALL	F2CHK
		RET
		
;**** BUSYをCHECK(1) ****
; PORTC BIT7が1になるまでLOP
F1CHK:	IN		A,(PPI_C)
		AND		80H				;PORTC BIT7 = 1?
		JR		Z,F1CHK
		RET

;**** BUSYをCHECK(0) ****
; PORTC BIT7が0になるまでLOOP
F2CHK:	IN		A,(PPI_C)
		AND		80H				;PORTC BIT7 = 0?
		JR		NZ,F2CHK
		RET

PEND:
		END
