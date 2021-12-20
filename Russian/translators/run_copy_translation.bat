SET _DEVICE=%1
SET _APKFILE=%2
SET _EXT=%3

SET _run=D:\Android\XMLCompare\
SET _src=D:\Android\Github\MA-XML-12-Compare\%_DEVICE%\%_APKFILE%.apk\res\values\
SET _dst=D:\Android\Github\MA-XML-12-RUSSIAN\Russian\main\%_APKFILE%.apk\res\values-ru%_EXT%\
SET _dat=D:\Android\Github\MA-XML-12-RUSSIAN\Russian\translators\

IF EXIST %_src%strings.xml (
  copy %_src%strings.xml D:\Android\XMLCompare\SRC 
) ELSE (
  echo STRINGS [SRC] NOT FOUND
  goto _end_strings
)
IF EXIST %_dst%strings.xml (
  copy %_dst%strings.xml D:\Android\XMLCompare\DST 
) ELSE (
  echo STRINGS [DST] NOT FOUND
  goto _end_strings
)

del %_run%DST\result.xml
%_run%XMLCompare /s %_run%SRC\strings.xml /d %_run%DST\strings.xml /i %_dat%ignore.xml /t %_dat%translate.xml /n 4 /silent_t

IF EXIST %_run%DST\result.xml (
  copy %_run%DST\result.xml %_run%DST\strings.xml
  copy %_run%DST\strings.xml %_dst%
  del %_run%DST\result.xml
) ELSE (
  echo STRINGS EXEC ERROR
  pause
)

:_end_strings

IF EXIST %_src%plurals.xml (
  copy %_src%plurals.xml D:\Android\XMLCompare\SRC 
) ELSE (
  echo PLURALS [SRC] NOT FOUND
  goto _end_plurals
)
IF EXIST %_dst%plurals.xml (
  copy %_dst%plurals.xml D:\Android\XMLCompare\DST 
) ELSE (
  echo PLURALS [DST] NOT FOUND
  goto _end_plurals
)

del %_run%DST\result.xml
%_run%XMLCompare /fp /s %_run%SRC\plurals.xml /d %_run%DST\plurals.xml /i %_dat%ignore_p.xml /t %_dat%translate_p.xml /n 4 /silent_t

IF EXIST %_run%DST\result.xml (
  copy %_run%DST\result.xml %_run%DST\plurals.xml
  copy %_run%DST\plurals.xml %_dst%
  del %_run%DST\result.xml
) ELSE (
  echo PLURALS EXEC ERROR
)

:_end_plurals

IF EXIST %_src%arrays.xml (
  copy %_src%arrays.xml D:\Android\XMLCompare\SRC 
) ELSE (
  echo ARRAYS [SRC] NOT FOUND
  goto _end_arrays
)
IF EXIST %_dst%arrays.xml (
  copy %_dst%arrays.xml D:\Android\XMLCompare\DST 
) ELSE (
  echo ARRAYS [DST] NOT FOUND
  goto _end_arrays
)

del %_run%DST\result.xml
%_run%XMLCompare /fa /s %_run%SRC\arrays.xml /d %_run%DST\arrays.xml /i %_dat%ignore_a.xml /t %_dat%translate_a.xml /n 4 /silent_t

IF EXIST %_run%DST\result.xml (
  copy %_run%DST\result.xml %_run%DST\arrays.xml
  copy %_run%DST\arrays.xml %_dst%
  del %_run%DST\result.xml
) ELSE (
  echo ARRAYS EXEC ERROR
)

:_end_arrays
