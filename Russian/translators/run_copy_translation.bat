echo off
echo.
echo.
echo ################################################################################################
echo prepare %2.apk

SET _DEVICE=%1
SET _APKFILE=%2
SET _EXT=%3

SET _run=D:\Android\XMLCompare\
SET _src=D:\Android\Github\MA-XML-13-Compare\%_DEVICE%\%_APKFILE%.apk\res\values\
SET _dst=D:\Android\Github\MA-XML-13-RUSSIAN\Russian\main\%_APKFILE%.apk\res\values-ru%_EXT%\
SET _dat=D:\Android\Github\MA-XML-13-RUSSIAN\Russian\translators\

echo.
IF EXIST %_src%strings.xml (
  copy %_src%strings.xml D:\Android\XMLCompare\SRC 
) ELSE (
  echo checking... [STRINGS] - SRC_NOT_FOUND
  goto _end_strings
)
IF EXIST %_dst%strings.xml (
  copy %_dst%strings.xml D:\Android\XMLCompare\DST 
) ELSE (
  echo checking... [STRINGS] - DST_NOT_FOUND
  goto _end_strings
)

IF EXIST %_run%DST\result.xml (
del %_run%DST\result.xml
)
%_run%XMLCompare /s %_run%SRC\strings.xml /d %_run%DST\strings.xml /i %_dat%ignore.xml /t %_dat%translate.xml /n 4 /silent_t

IF EXIST %_run%DST\result.xml (
  copy %_run%DST\result.xml %_run%DST\strings.xml
  copy %_run%DST\strings.xml %_dst%
  del %_run%DST\result.xml
) ELSE (
  echo processing... [STRINGS] - EXEC_ERROR
  pause
)

:_end_strings

echo.
IF EXIST %_src%plurals.xml (
  copy %_src%plurals.xml D:\Android\XMLCompare\SRC 
) ELSE (
  echo checking... [PLURALS] - SRC_NOT_FOUND
  goto _end_plurals
)
IF EXIST %_dst%plurals.xml (
  copy %_dst%plurals.xml D:\Android\XMLCompare\DST 
) ELSE (
  echo checking... [PLURALS] - DST_NOT_FOUND
  goto _end_plurals
)

IF EXIST %_run%DST\result.xml (
del %_run%DST\result.xml
)
%_run%XMLCompare /fp /s %_run%SRC\plurals.xml /d %_run%DST\plurals.xml /i %_dat%ignore_p.xml /t %_dat%translate_p.xml /n 4 /silent_t

IF EXIST %_run%DST\result.xml (
  copy %_run%DST\result.xml %_run%DST\plurals.xml
  copy %_run%DST\plurals.xml %_dst%
  del %_run%DST\result.xml
) ELSE (
  echo processing... [PLURALS] - EXEC_ERROR
)

:_end_plurals

echo.
IF EXIST %_src%arrays.xml (
  copy %_src%arrays.xml D:\Android\XMLCompare\SRC 
) ELSE (
  echo checking... [ARRAYS] - SRC_NOT_FOUND
  goto _end_arrays
)
IF EXIST %_dst%arrays.xml (
  copy %_dst%arrays.xml D:\Android\XMLCompare\DST 
) ELSE (
  echo checking... [ARRAYS] - DST_NOT_FOUND
  goto _end_arrays
)

IF EXIST %_run%DST\result.xml (
del %_run%DST\result.xml
)
%_run%XMLCompare /fa /s %_run%SRC\arrays.xml /d %_run%DST\arrays.xml /i %_dat%ignore_a.xml /t %_dat%translate_a.xml /n 4 /silent_t

IF EXIST %_run%DST\result.xml (
  copy %_run%DST\result.xml %_run%DST\arrays.xml
  copy %_run%DST\arrays.xml %_dst%
  del %_run%DST\result.xml
) ELSE (
  echo processing... [ARRAYS] - EXEC_ERROR
)

:_end_arrays
