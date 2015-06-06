REM vimrcsetup
REM symboliclink vimrc
mklink /H %HOMEPATH%\_vimrc    %HOMEPATH%\src\git\github\tluna\vim\vimrc
mklink /H %HOMEPATH%\_gvimrc   %HOMEPATH%\src\git\github\tluna\vim\gvimrc
mklink /D %HOMEPATH%\vimfiles %HOMEPATH%\src\git\github\tluna\vim
REM bundle
cd %HOMEPATH%\src\git\github\tluna
git submodule init
git submodule update
