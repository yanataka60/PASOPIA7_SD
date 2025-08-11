# TOSHIBA PASOPIA、PASOPIA7にSD-Cardとのロード、セーブ機能

![PASOPIA7_SD](https://github.com/yanataka60/PASOPIA7_SD/blob/main/JPEG/TITLE.jpg)

　TOSHIBA PASOPIA、PASOPIA7でCMTの代わりにSD-CARDからロード、セーブを実現するものです。

　SDから読み込めるCMTのファイル形式はEMUで一般的なWAV、CASには対応していません。bugfire2009さんのDumpListEditorを使ってバイナリ形式に変換したものを使います。

　機械語 -> 各モデル固有ヘッダ付きBINファイル、拡張子は.bin

　BASIC -> BASファイル、拡張子は.bas

　CMTからの読み込み実行に数分掛かっていたゲームも数十秒で実行できます。

　ただし、CMT用プログラムのすべてがSD対応となるわけではありません。特に市販ゲームはCMT読み込みに独自ルーチンを使っているものもあるため、SD対応は不明です。

　なお、Arduino、ROMへ書き込むための機器が別途必要となります。

## 重要!!
　PASOPIA、PASOPIA7においてあるあるの電源ユニット部フィルムコンデンサの破裂ですが、修理に適切な品への交換されていない場合、電源電圧は正常(+5V)なのに信号電圧が異常(+10V程度)な状態となることがあるようです。

　私は当初電源電圧が正常であることを確認したものの原因が判らずArduino及びUSBシリアル変換モジュールを数個破壊してしまいました。

　当方ではCZRD信号の電圧が異常だったため、念のためPASOPIA7_SD基板にCZRD信号電圧を測るための「J6 TEST_VOL」端子を設けてあります。

　ICを装着する前に電圧をチェックし、+5V以上の電圧が出ているようであればまず電源ユニット部フィルムコンデンサを適切な品に交換してください。

　また、事前に調査するのであればPAC SLOT2 15Pin(CRD)の電圧を測ってみてください。

## 回路図
　PASOPIA7_SD本体基板とPASOPIA7_SD_ROM基板に分かれています。PASOPIA、PASOPIA7とも同一の基板を使います。

　SDアクセスルーチンを読み込むためにPASOPIA7_SD_ROM基板(読込専用RAMPAC)を使用します。

　XPAC2又はRAMPACを持っていればそれにCMTから読み込んだSDアクセスルーチンを保存しておくことで使用することも可能です。詳細は後述の「XPAC2又はRAMPACの使用」を参照してください。

### PASOPIA7_SD本体基板
　KiCadフォルダ内のPASOPIA7_SD.PDFを参照してください。

[回路図](https://github.com/yanataka60/PASOPIA7_SD/blob/main/Kicad/1.6/PASOPIA7_SD.pdf)

![PASOPIA7_SD](https://github.com/yanataka60/PASOPIA7_SD/blob/main/Kicad/1.6/PASOPIA7_SD_1.jpg)

## 部品
|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
|J1|2x25ボックスヘッダ|1|共立エレショップ JS-1200R-50など、秋月電子通商 PH-2x40RGなどのピンヘッダでも代用可(注4)|
||J2,J3のいずれか|||
|J2|Micro_SD_Card_Kit|1|秋月電子通商 AE-microSD-LLCNV (注1)|
|J3|MicroSD Card Adapter|1|Arduino等に使われる5V電源に対応したもの(注2)|
|U1|74LS04|1||
|U2|74LS30|1||
|U3|8255|1||
|U4|Arduino_Pro_Mini_5V|1|Atmega328版を使用 168版は不可。(注3)|
|C1-C3|積層セラミックコンデンサ 0.1uF|3||
|C4|電解コンデンサ 16v100uF|1||
|S1|3Pスライドスイッチ|1|秋月電子通商 SS12D01G4など|
|J4|コネクタ 2Pin|1|ピンヘッダで代用するときはGNDと間違えないよう1Pinで5Vだけにしたほうが良い|
|J5|DCジャック|1|秋月電子通商 MJ-179PHなど|
|J6|2P ピンヘッダ|1|秋月電子通商 PH-1x40SGなど|
||2.54mmピッチ2x25Pinフラットケーブル|1||
||PASOPIA7_SDとPASOPIA7_SD_ROMを繋ぐケーブル|15cm～30cm|ジャンプワイヤー メス-メスなど|

PASOPIA7_SDに外部から電源を供給する場合
|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
||ACアダプター 5V|1|秋月電子通商 M050200-A010JPなど|

### 注1)秋月電子通商　AE-microSD-LLCNVのJ1ジャンパはショートしてください。

### 注2)MicroSD Card Adapterを使う場合

J3に取り付けます。

MicroSD Card Adapterについているピンヘッダを除去してハンダ付けするのが一番確実ですが、J2の穴にMicroSD Card Adapterをぴったりと押しつけ、裏から多めにハンダを流し込むことでハンダ付けをする方法もあります。なお、この方法の時にはしっかりハンダ付けが出来たかテスターで導通を確認しておいた方が安心です。

ハンダ付けに自信のない方はJ1の秋月電子通商　AE-microSD-LLCNVをお使いください。AE-microSD-LLCNVならパワーLED、アクセスLEDが付いています。

![MicroSD Card Adapter1](https://github.com/yanataka60/PASOPIA7_SD/blob/main/JPEG/MicroSD%20Card%20Adapter.jpg)

### 注3)Arduino Pro MiniはA4、A5ピンも使っています。

#### 注4)ピンヘッダで代用するときは、基板から若干浮かせてピンヘッダをハンダ付けするとフラットケーブルをスムーズに抜き差しできます。


### PASOPIA7_SD_ROM基板
　KiCadフォルダ内のPASOPIA7_SD.PDFを参照してください。

[回路図](https://github.com/yanataka60/PASOPIA7_SD/blob/main/Kicad/ROM/PASOPIA7_SD_ROM.pdf)

![PASOPIA7_SD](https://github.com/yanataka60/PASOPIA7_SD/blob/main/Kicad/ROM/PASOPIA7_SD_ROM_1.jpg)
|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
|U1|74LS04|1||
|U2|74LS00|1||
|U3|74LS20|1||
|U4-U5|74LS273|2||
|U6|ROM 27256/29C256又は27512/27C512相当品|1|入手しやすいものでOK、28C256は不可|
|U7|74LS245|1||
|C1-C7|積層セラミックコンデンサ 0.1uF|7||
|C8|電解コンデンサ 16v100uF|1||
|S1|3Pin ピンヘッダーとジャンパーピン又は3Pスライドスイッチ|1|秋月電子通商 SS12D01G4など|
|J2|コネクタ 2Pin|1|ピンヘッダで代用するときはGNDと間違えないよう1Pinで5Vだけにしたほうが良い|

## 取り付け
　PASOPIA7_SD本体基板はPASOPIA7(PASOPIA)本体後部の拡張端子とフラットケーブルで接続します。50Pinフラットケーブルは、コネクタのボッチとケーブルの返しが両方上になる側のコネクタを本体に嵌めます。

　ケーブルの返しを下にして本体に嵌めると一見嵌っているように見えても接触不良を起こしていることがあります。

![Connect1](https://github.com/yanataka60/PASOPIA7_SD/blob/main/JPEG/CONNECT(1).JPG)

　PASOPIA7_SD_ROM基板はPACスロット2に挿入します。この時PASOPIA7_SD_ROM基板は部品実装面を手前にして挿入してください。基板の右端をスロットの右に合わせるように挿入すればズレずに挿入できると思います。

　次にPASOPIA7_SD_ROM基板への+5V供給のため、PASOPIA7_SD_ROM基板の+5V端子(J2)とPASOPIA7_SD本体基板の+5V端子(J4)を繋いでください。

![Connect2](https://github.com/yanataka60/PASOPIA7_SD/blob/main/JPEG/CONNECT(2).JPG)

　XPAC2又はRAMPACを使用するときは、外部電源として5V電源アダプタを接続するか、内部電源としてPAC SLOT1の43Pin又は44Pinから+5Vを取り出してジャンプワイヤー オス-メスなどで接続します。

![Connect3](https://github.com/yanataka60/PASOPIA7_SD/blob/main/JPEG/PAC%20SLOT%201.JPG)

## ROMへの書込み
　Z80フォルダ内のRAMPAC.binをROMライター(TL866II Plus等)を使って27256又は27512に書き込みます。

　実際に使用しているのは32KByte分(32Kx8)です。

　PASOPIA7_SD_ROM基板のROMはPASOPIA7(PASOPIA)からはRAMPACとして扱われます。(PASOPIA7(PASOPIA)から書き込みはできません。)

## RAMPAC.binに登録されているファイル
　RAMPAC.binに登録されているファイルは次の2つになります。

|ファイル名|種類|備考｜
| ------------ | ------------ | ------------ |
|sd|BASIC|PASOPIA7用｜
|SDBOOT|BINARY|PASOPIA7用|
|sdt|BASIC|PASOPIA用｜
|SDTBOOT|BINARY|PASOPIA用|

　また、RAMPAC.binへのファイル登録はTAKEDAさんのEMU ePASOPIA7で行っており、RAMPAC1としてファイルを選択すればePASOPIA7から読み書き出来ます。

## XPAC2又はRAMPACの使用
　XPAC2又はRAMPACを持っていればPASOPIA7_SD_ROM基板の代わりに使用できます。

　ただし、PASOPIA7_SD本体基板への+5V供給を独自に用意する必要があります。内部から引き出すか、5V電源アダプタを用意するかですが、PACスロット1 44Pinから取るのが簡単だと思います。

### XPAC2
　ePASOPIA7で扱うRAMPACKが32KByteなのに対してXPAC2で扱うSLOT4は64KByteです。

　XPAC2のSD-CARDへRAMPAC.binをコピーしてXPAC2 SLOT4へ登録することも可能とは思われますが、容量が32KByteとなってしまう気がします。

　XPAC2 SLOT4を64KByteのまま使いたいのであればsd.wav、SDBOOT.wavをCMTインタフェースから読み込み、XPAC2 SLOT4へ保存してください。

### RAMPAC
　RAMPAC.binをRAMPACへ登録する方法がありませんのでsd.wav、SDBOOT.wavをCMTインタフェースから読み込み、RAMPACへ保存してください。

## Arduinoプログラム
　Arduino IDEを使ってArduinoフォルダのPASOPIA7_SDフォルダ内PASOPIA7_SD.inoを書き込みます。PASOPIA7、PASOPIA共通です。

　SdFatライブラリを使用しているのでArduino IDEメニューのライブラリの管理からライブラリマネージャを立ち上げて「SdFat」をインストールしてください。

　「SdFat」で検索すれば見つかります。「SdFat」と「SdFat - Adafruit Fork」が見つかりますが「SdFat」のほうを使っています。

注)Arduinoを基板に直付けしている場合、Arduinoプログラムを書き込むときは、PASOPIA7(PASOPIA)本体とは接続を外し、U1 74LS04を外したうえで書き込んでください。


## SD-CARD
　出来れば8GB以下のSDカードを用意してください。

　ArduinoのSdFatライブラリは、SD規格(最大2GB)、SDHC規格(2GB～32GB)に対応していますが、SDXC規格(32GB～2TB)には対応していません。

　また、SDHC規格のSDカードであっても32GB、16GBは相性により動作しないものがあるようです。

　FAT16又はFAT32が認識できます。NTFSは認識できません。

## 操作方法
### PASOPIA7
　起動直後に「RUN"sd"」を実行してSDアクセスルーチンの読込、初期化の実行を行います。

　SDアクセスルーチンはE800h～EFCFhに読み込まれます。

　SDアクセスメニューを表示するにはA=&HE800:CALL Aを実行しますが、PF6ファンクションキーに登録してありますのでPF6ファンクションキーを押しても大丈夫です。

### PASOPIA
　起動直後に「RUN"sdt"」を実行してSDアクセスルーチンの読込、初期化の実行を行います。

　SDアクセスルーチンはF000h～F776hに読み込まれます。

　SDアクセスメニューを表示するにはA=&HF000:CALL Aを実行しますが、PF6ファンクションキーに登録してありますのでPF6ファンクションキーを押しても大丈夫です。

#### 扱えるファイル(PASOPIA7、PASOPIA共通)
bugfire2009さんのDumpListEditorを使ってバイナリ形式に変換したものを使います。

扱う機種をPASOPIA7に変更したうえで変換します。

![DumpListEditor0](https://github.com/yanataka60/PASOPIA7_SD/blob/main/JPEG/DumpListEditor0.jpg)

##### 機械語 -> 「BINファイル書出し(各モデル固有ヘッダ付き)」で保存、拡張子は.bin

![DumpListEditor1](https://github.com/yanataka60/PASOPIA7_SD/blob/main/JPEG/DumpListEditor2.jpg)

##### BASIC -> 「BASファイル書出し」で保存、拡張子は.bas

![DumpListEditor2](https://github.com/yanataka60/PASOPIA7_SD/blob/main/JPEG/DumpListEditor1.jpg)

### コマンド(PASOPIA7、PASOPIA共通)
　コマンド入力時にBSキー又は左カーソルキーで直前に入力した文字を訂正できます。

　CLR、HOME、上・下・右カーソルキーは画面が乱れるだけで入力文字の訂正は出来ません。

#### SD[RETURN]又はSD 文字列[RETURN]
　文字列を入力せずにSD[RETURN]のみ入力するとSD-CARDルートディレクトリにあるファイルの一覧を表示します。

　文字列を付けて入力すればSD-CARDルートディレクトリにあるその文字列から始まるファイルの一覧を表示します。
　10件表示したところで指示待ちになるのでESCキーで終了、Bキー又はBSキーで前の10件に戻ります。それ以外のキーで次の10件を表示します。

　LOADしたいファイルを見つけたら左端の数字のキーを押せばLOADされます。

　BASICプログラムか、機械語プログラムかは自動で判断します。

　なお、E7FFh以降へ機械語プログラムがLOADされた場合、次の五段階の挙動となります。

　1)～E8FCh:機械語プログラムをLOAD後は、SM,SBコマンドが使用できなくなります。LM,LG,LB,SD,J,Q,Bコマンドは使用できます。

　2)～EC54h:機械語プログラムをLOAD後は、J,Q,Bのみ使えます。SD,LMコマンドでLOADした後、Jコマンドでの実行は可能です。

　3)～EDC6h:BASICプログラムLOADの限界です。通常はCLEAR文で設定したメインメモリの上限E800hですが、F000hに変更すればEDC6hまでのBASICプログラムを一度だけLOAD出来ます。

　4)～EE61h:BASIC中からはこれ以降への機械語LOADは出来ません。

　5)～EEE7h:機械語プログラムをLOAD後は、すべてのコマンドが使えません。EDC7h以降までLOADされた場合は強制的に実行番地にジャンプを試みます。

　表示される順番は、登録順となりファイル名アルファベッド順などのソートした順で表示することはできません。

##### 例)
　　SD[RETURN]

　　SD S[RETURN]

　　SD SP[RETURN]

#### LM DOSファイル名[RETURN]
　指定したDOSフィル名の機械語プログラムをSD-CARDからLOADします。

　拡張子が「bin」であるファイルだけが対象でファイル名の最後が「.BIN」でない場合には自動的に付加されます。

　なお、E7FFh以降へ機械語プログラムがLOADされた場合、次の五段階の挙動となります。

　1)～E8FCh:機械語プログラムをLOAD後は、SM,SBコマンドが使用できなくなります。LM,LG,LB,SD,J,Q,Bコマンドは使用できます。

　2)～EC54h:機械語プログラムをLOAD後は、J,Q,Bのみ使えます。SD,LMコマンドでLOADした後、Jコマンドでの実行は可能です。

　3)～EDC6h:BASICプログラムLOADの限界です。通常はCLEAR文で設定したメインメモリの上限E800hですが、F000hに変更すればEDC6hまでのBASICプログラムを一度だけLOAD出来ます。

　4)～EE61h:BASIC中からはこれ以降への機械語LOADは出来ません。

　5)～EEE7h:機械語プログラムをLOAD後は、すべてのコマンドが使えません。EDC7h以降までLOADされた場合は強制的に実行番地にジャンプを試みます。

##### 例)
　　LM TEST[RETURN] -> DOSファイル名「TEST.BIN」を読み込みます。

　　LM TEST.BIN[RETURN] -> DOSファイル名「TEST.BIN」を読み込みます。

　　LM TEST.BAS[RETURN] -> DOSファイル名「TEST.BAS.BIN」を読み込みます。

#### LG DOSファイル名[RETURN]
　指定したDOSフィル名の機械語プログラムをSD-CARDからLOADした後、実行開始アドレスへジャンプします。

　LOAD後そのまま実行するのでFF64hまでLOADしても大丈夫です。

　LOADした後、実行開始アドレスへジャンプする以外はLMコマンドと同じです。

#### LB DOSファイル名[RETURN]
　現在選択しているPROGエリアに指定したDOSフィル名のBASICプログラムをSD-CARDからLOADします。

　LOADするPROGエリアを切り替えたい場合にはSDメニューに入る前に切り替えておいてください。

　拡張子が「BAS」であるファイルだけが対象でファイル名の最後が「.BAS」でない場合には自動的に付加されます。

##### 例)
　　LB TEST[RETURN] -> DOSファイル名「TEST.BAS」を読み込みます。

　　LB TEST.BAS[RETURN] -> DOSファイル名「TEST.BAS」を読み込みます。

　　LB TEST.BIN[RETURN] -> DOSファイル名「TEST.BIN.BAS」を読み込みます。

#### SM XXXX,YYYY,DOSファイル名[RETURN]　(XXXX,YYYYは16進数4桁を表す文字列)
　XXXX番地からYYYY番地までの機械語プログラムを指定したDOSフィル名でSD-CARDにSAVEします。

　拡張子の指定「.BIN」は省略することが出来、ファイル名の最後が「.BIN」でない場合には自動的に付加されます。

##### 例)
　　SM B000,BFFF,TEST[RETURN] -> B000h～BFFFhまでをDOSファイル名「TEST.BIN」でSAVEします。

　　SM B000,BFFF,TEST.BIN[RETURN] -> B000h～BFFFhまでをDOSファイル名「TEST.BIN」でSAVEします。

　　SM B000,BFFF,TEST.BAS[RETURN] -> B000h～BFFFhまでをDOSファイル名「TEST.BAS.BIN」でSAVEします。

#### SB DOSファイル名[RETURN]
　現在選択しているPROGエリアのBASICプログラムを指定したDOSフィル名でSD-CARDにSAVEします。

　SAVEするPROGエリアを切り替えたい場合にはSDメニューに入る前に切り替えておいてください。

　拡張子の指定「.BAS」は省略することが出来、ファイル名の最後が「.BAS」でない場合には自動的に付加されます。

##### 例)
　　SB TEST[RETURN] -> DOSファイル名「TEST.BAS」でSAVEします。

　　SB TEST.BAS[RETURN] -> DOSファイル名「TEST.BAS」でSAVEします。

　　SB TEST.BIN[RETURN] -> DOSファイル名「TEST.BIN.BAS」でSAVEします。

#### J[RETURN]又はJ 16進数4桁[RETURN]
　Jだけの場合は、直前にLOADした機械語プログラムの先頭番地へジャンプします。

　16進数4桁を指定した場合は16進数4桁が表すアドレスにジャンプします。

　Jの後ろに空白があっても無くても構いません。

#### B[RETURN]又はQ[RETURN]
　BASICに復帰します。

### BASICプログラム中から機械語プログラムをLOADする
#### PASOPIA7
　BASICプログラム中に「CALL &HE803:REM ファイル名」と記述することで機械語プログラムをLOAD出来ます。

　ファイル名はSDカードに保存されているファイル名です。拡張子はつけてもつけなくても構いません。

　通常LOAD可能なのはCLEAR文で設定したメインメモリの上限E7FFhですが、F000hに変更すればEE61hまでのBASICプログラムをLOAD出来ます。

##### 例)

20 B=&HE803:CALL B:REM antiair.bin

#### PASOPIA
　BASICプログラム中に「CALL &HF003:REM ファイル名」と記述することで機械語プログラムをLOAD出来ます。

　ファイル名はSDカードに保存されているファイル名です。拡張子はつけてもつけなくても構いません。

　通常LOAD可能なのはCLEAR文で設定したメインメモリの上限EFFFhですが、F7FChに変更すればF614hまでのBASICプログラムをLOAD出来ます。

##### 例)

20 B=&HE803:CALL B:REM antiair.bin


## 未解決事項(2025.8.11)
　PASOPIA7_SDからPASOPIA、PASOPIA7の両機種でいぬふと様のゲームを起動したとき、以下の症状が出ることがあります。

#### 　原因を調査中ですが特定に至っていません。しかし、CMTからの起動においては症状はでませんのでいぬふと様のゲームに問題があるのではなく、PASOPIA7_SD側の問題と思われますのでこの件に関していぬふと様に問い合わせることはご遠慮くださるようお願いします。

### PASOPIA
　表示がずれます。ゲーム起動直前にwidth 40を実行すると回避できるようです。

　PASOPIA7_SD起動時にwidth 40:width 36としていますが、それでも表示がずれる場合にはゲーム起動直前にwidth 40を実行してから起動してみてください。

### PASOPIA7
　いくつかのゲームで何も押していないのに勝手にキー入力され続けてしまうことがあります。また症状が出るときと出ない時があり、原因の特定に至っていません。

　症状が出ない時には普通にゲームができます。今のところ、回避方法、対策が見つかっていません。

## 操作上の注意
　電源を入れたままSD-CARDの抜き差しをする場合又は「SD-CARD INITIALIZE ERROR」と表示されたときは、SD-CARDを挿入後、SD、LM、LBコマンド等でSD-CARDに3回ほどアクセスすれば復旧します。

　SD-CARDの抜き差しは電源を切った状態で行うほうがより確実です。

## 謝辞
　基板の作成に当たり以下のデータを使わせていただきました。ありがとうございました。

　Arduino Pro Mini

　　https://github.com/g200kg/kicad-lib-arduino

　AE-microSD-LLCNV

　　https://github.com/kuninet/PC-8001-SD-8kRAM
