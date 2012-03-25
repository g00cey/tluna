SET RUSERNAME=0

REM コピー先を最初に定義する
SET RUSERNAME_BASEDIR=\\tluna\big1\test\

:A
REM 名前を入力させる　入力されるまでこの分は表示される
SET /p RUSERNAME="名前を入力してください"
if%RUSERNAME% == "" goto A
if%RUSERNAME% == "0" goto A

REM 名前が挿入される
echo %RUSERNAME% > %RUSERNAME%-pcnicinfo.txt
SET RUSERNAME= %RUSERNAME%-pcnicinfo.txt

REM ハードウェアテンプレートが挿入される
TYPE %RUSERNAME_BASEDIR%hardware.txt >> %RUSERNAME%
systeminfo >> %RUSERNAME%

REM ipconfigの結果が挿入される
ipconfig /all >> %RUSERNAME%

REM NOTEPADで編集
notepad %RUSERNAME%

REM 編集後サーバーにコピー
COPY %RUSERNAME% %RUSERNAME_BASEDIR%user
explorer %RUSERNAME_BASEDIR%user

REM 最後に作成したファイルを削除する
del %RUSERNAME%
