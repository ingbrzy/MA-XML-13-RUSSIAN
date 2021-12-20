@echo off

SET _DEVICE=%1
SET _APKFILE=%2

SET report=D:\Android\XMLCompare\report.txt 

SET exec_s=XMLCompare.exe /au
SET exec_p=XMLCompare.exe /fp /au
SET xmlcmp_s=D:\Android\XMLCompare\%exec_s%
SET xmlcmp_p=D:\Android\XMLCompare\%exec_p%

SET _src=D:\Android\Github\MA-XML-13-RUSSIAN\Russian\translators\__repo\
SET _dst=D:\Android\Github\MA-XML-13-RUSSIAN\Russian\device\
SET _mnt=D:\Android\Github\MA-XML-13-RUSSIAN\Russian\main

SET _dir=\%_APKFILE%\res\values-ru\

echo -------------------- >> %report%
echo device=%_DEVICE%, apk=%_APKFILE% >> %report%
echo. >> %report%

IF EXIST %_mnt%%_dir%strings.xml (
  echo copying strings.xml >> %report%
  del %_dst%%_DEVICE%%_dir%strings.xml
  copy %_mnt%%_dir%strings.xml %_dst%%_DEVICE%%_dir% 
) ELSE (
  echo missed strings.xml >> %report%
  goto _finish_strings
)

IF NOT EXIST %_src%%_DEVICE%%_dir%strings.xml (
  goto _finish_strings
)

echo %exec_s% /n 4 >> %report% 
echo   /s %_src%%_DEVICE%%_dir%strings.xml >> %report%
echo   /d %_dst%%_DEVICE%%_dir%strings.xml >> %report%
@echo on
%xmlcmp_s% /s %_src%%_DEVICE%%_dir%strings.xml /d %_dst%%_DEVICE%%_dir%strings.xml /n 4
@echo off

IF EXIST %_dst%%_DEVICE%%_dir%result.xml (
  echo SUCCESS >> %report%
  del %_dst%%_DEVICE%%_dir%strings.xml
  ren %_dst%%_DEVICE%%_dir%result.xml strings.xml
) ELSE (
  echo ERROR >> %report%
)

:_finish_strings

IF EXIST %_mnt%%_dir%plurals.xml (
  echo copying plurals.xml >> %report%
  del %_dst%%_DEVICE%%_dir%plurals.xml
  copy %_mnt%%_dir%plurals.xml %_dst%%_DEVICE%%_dir% 
) ELSE (
  echo missed plurals.xml >> %report%
  goto _finish_plurals
)

IF NOT EXIST %_src%%_DEVICE%%_dir%plurals.xml (
  goto _finish_plurals
)

echo %exec_p% /n 4 >> %report% 
echo   /s %_src%%_DEVICE%%_dir%plurals.xml >> %report%
echo   /d %_dst%%_DEVICE%%_dir%plurals.xml >> %report%
@echo on
%xmlcmp_p% /s %_src%%_DEVICE%%_dir%plurals.xml /d %_dst%%_DEVICE%%_dir%plurals.xml /n 4
@echo off

IF EXIST %_dst%%_DEVICE%%_dir%result.xml (
  echo SUCCESS >> %report%
  del %_dst%%_DEVICE%%_dir%plurals.xml
  ren %_dst%%_DEVICE%%_dir%result.xml plurals.xml
) ELSE (
  echo ERROR >> %report%
)

:_finish_plurals

IF EXIST %_mnt%%_dir%arrays.xml (
  echo copying arrays.xml >> %report%
  copy %_mnt%%_dir%arrays.xml %_dst%%_DEVICE%%_dir% 
)

IF EXIST %_mnt%%_dir%dimens.xml (
  echo copying dimens.xml >> %report%
  copy %_mnt%%_dir%dimens.xml %_dst%%_DEVICE%%_dir% 
)
