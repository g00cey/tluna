SET RUSERNAME=0

REM �R�s�[����ŏ��ɒ�`����
SET RUSERNAME_BASEDIR=\\tluna\big1\test\

:A
REM ���O����͂�����@���͂����܂ł��̕��͕\�������
SET /p RUSERNAME="���O����͂��Ă�������"
if%RUSERNAME% == "" goto A
if%RUSERNAME% == "0" goto A

REM ���O���}�������
echo %RUSERNAME% > %RUSERNAME%-pcnicinfo.txt
SET RUSERNAME= %RUSERNAME%-pcnicinfo.txt

REM �n�[�h�E�F�A�e���v���[�g���}�������
TYPE %RUSERNAME_BASEDIR%hardware.txt >> %RUSERNAME%
systeminfo >> %RUSERNAME%

REM ipconfig�̌��ʂ��}�������
ipconfig /all >> %RUSERNAME%

REM NOTEPAD�ŕҏW
notepad %RUSERNAME%

REM �ҏW��T�[�o�[�ɃR�s�[
COPY %RUSERNAME% %RUSERNAME_BASEDIR%user
explorer %RUSERNAME_BASEDIR%user

REM �Ō�ɍ쐬�����t�@�C�����폜����
del %RUSERNAME%
