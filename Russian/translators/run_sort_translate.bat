cls

SET _run=D:\Android\XMLCompare\
SET _dst=D:\Android\Github\MA-XML-13-RUSSIAN\Russian\translators\

del %_dst%result.xml
%_run%XMLCompare /xliff /s %_dst%empty.xml /d %_dst%translate.xml /n 4

IF EXIST %_dst%result.xml (
  del %_dst%translate.xml
  rename %_dst%result.xml translate.xml
) ELSE (
  echo NOT FOUND
)

del %_dst%result.xml
%_run%XMLCompare /xliff /fp /s %_dst%empty.xml /d %_dst%translate_p.xml /n 4

IF EXIST %_dst%result.xml (
  del %_dst%translate_p.xml
  rename %_dst%result.xml translate_p.xml
) ELSE (
  echo NOT FOUND
)

del %_dst%result.xml
%_run%XMLCompare /xliff /fa /s %_dst%empty.xml /d %_dst%translate_a.xml /n 4

IF EXIST %_dst%result.xml (
  del %_dst%translate_a.xml
  rename %_dst%result.xml translate_a.xml
) ELSE (
  echo NOT FOUND
)
