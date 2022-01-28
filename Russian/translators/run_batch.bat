cls
;
@echo off
del D:\Android\XMLCompare\report.txt
@echo on

call routine.bat cas Settings.apk 
call routine.bat cmi Settings.apk 
call routine.bat lmi Settings.apk 
call routine.bat phoenix Settings.apk 
call routine.bat picasso Settings.apk 
call routine.bat picasso_48m Settings.apk 
call routine.bat umi Settings.apk 
call routine.bat vangogh Settings.apk 
call routine.bat tucana Settings.apk 
