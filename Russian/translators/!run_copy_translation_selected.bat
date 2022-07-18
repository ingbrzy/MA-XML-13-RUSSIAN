cls
;
if "%~1"=="" (
  echo WRONG PARAM
  goto _end_batch
)
;
call run_copy_translation_sel.bat %1 MiBrowserGlobal
call run_copy_translation_sel.bat %1 Music

:_end_batch
