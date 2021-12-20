cls

SET _run=D:\Android\XMLCompare\
SET _dst=D:\Android\Github\MA-XML-12-RUSSIAN\Russian\translators\

del %_dst%result.xml
%_run%XMLCompare /s %_dst%empty.xml /d %_dst%ignore.xml /n 4

IF EXIST %_dst%result.xml (
  del %_dst%ignore.xml
  rename %_dst%result.xml ignore.xml
) ELSE (
  echo NOT FOUND
)

del %_dst%result.xml
%_run%XMLCompare /fa /s %_dst%empty.xml /d %_dst%ignore_a.xml /n 4

IF EXIST %_dst%result.xml (
  del %_dst%ignore_a.xml
  rename %_dst%result.xml ignore_a.xml
) ELSE (
  echo NOT FOUND
)

del %_dst%result.xml
%_run%XMLCompare /fp /s %_dst%empty.xml /d %_dst%ignore_p.xml /n 4

IF EXIST %_dst%result.xml (
  del %_dst%ignore_p.xml
  rename %_dst%result.xml ignore_p.xml
) ELSE (
  echo NOT FOUND
)
