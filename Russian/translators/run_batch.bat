cls
;
@echo off
del D:\Android\XMLCompare\report.txt
@echo on
;
;Android 11 
;
call routine.bat cas Settings.apk 
call routine.bat cmi Settings.apk 
call routine.bat davinci Settings.apk 
call routine.bat lmi Settings.apk 
call routine.bat phoenix Settings.apk 
call routine.bat picasso Settings.apk 
call routine.bat picasso_48m Settings.apk 
call routine.bat umi Settings.apk 
call routine.bat vangogh Settings.apk 
;
; Android 10
;
call routine.bat cepheus Settings.apk 
call routine.bat chiron Settings.apk 
call routine.bat dipper Settings.apk 
call routine.bat equuleus Settings.apk 
call routine.bat jason Settings.apk 
call routine.bat laurus Settings.apk 
call routine.bat lavender Settings.apk 
call routine.bat sagit Settings.apk 
call routine.bat surya Settings.apk 
call routine.bat tucana Settings.apk 
call routine.bat vela Settings.apk 
call routine.bat wayne Settings.apk 
call routine.bat whyred Settings.apk 
call routine.bat violet Settings.apk 
;
call routine.bat curtana_stable Settings.apk 
