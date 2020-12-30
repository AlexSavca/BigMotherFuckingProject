@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist E:\XAMPP\hypersonic\scripts\ctl.bat (start /MIN /B E:\XAMPP\server\hsql-sample-database\scripts\ctl.bat START)
if exist E:\XAMPP\ingres\scripts\ctl.bat (start /MIN /B E:\XAMPP\ingres\scripts\ctl.bat START)
if exist E:\XAMPP\mysql\scripts\ctl.bat (start /MIN /B E:\XAMPP\mysql\scripts\ctl.bat START)
if exist E:\XAMPP\postgresql\scripts\ctl.bat (start /MIN /B E:\XAMPP\postgresql\scripts\ctl.bat START)
if exist E:\XAMPP\apache\scripts\ctl.bat (start /MIN /B E:\XAMPP\apache\scripts\ctl.bat START)
if exist E:\XAMPP\openoffice\scripts\ctl.bat (start /MIN /B E:\XAMPP\openoffice\scripts\ctl.bat START)
if exist E:\XAMPP\apache-tomcat\scripts\ctl.bat (start /MIN /B E:\XAMPP\apache-tomcat\scripts\ctl.bat START)
if exist E:\XAMPP\resin\scripts\ctl.bat (start /MIN /B E:\XAMPP\resin\scripts\ctl.bat START)
if exist E:\XAMPP\jetty\scripts\ctl.bat (start /MIN /B E:\XAMPP\jetty\scripts\ctl.bat START)
if exist E:\XAMPP\subversion\scripts\ctl.bat (start /MIN /B E:\XAMPP\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist E:\XAMPP\lucene\scripts\ctl.bat (start /MIN /B E:\XAMPP\lucene\scripts\ctl.bat START)
if exist E:\XAMPP\third_application\scripts\ctl.bat (start /MIN /B E:\XAMPP\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist E:\XAMPP\third_application\scripts\ctl.bat (start /MIN /B E:\XAMPP\third_application\scripts\ctl.bat STOP)
if exist E:\XAMPP\lucene\scripts\ctl.bat (start /MIN /B E:\XAMPP\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist E:\XAMPP\subversion\scripts\ctl.bat (start /MIN /B E:\XAMPP\subversion\scripts\ctl.bat STOP)
if exist E:\XAMPP\jetty\scripts\ctl.bat (start /MIN /B E:\XAMPP\jetty\scripts\ctl.bat STOP)
if exist E:\XAMPP\hypersonic\scripts\ctl.bat (start /MIN /B E:\XAMPP\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist E:\XAMPP\resin\scripts\ctl.bat (start /MIN /B E:\XAMPP\resin\scripts\ctl.bat STOP)
if exist E:\XAMPP\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT E:\XAMPP\apache-tomcat\scripts\ctl.bat STOP)
if exist E:\XAMPP\openoffice\scripts\ctl.bat (start /MIN /B E:\XAMPP\openoffice\scripts\ctl.bat STOP)
if exist E:\XAMPP\apache\scripts\ctl.bat (start /MIN /B E:\XAMPP\apache\scripts\ctl.bat STOP)
if exist E:\XAMPP\ingres\scripts\ctl.bat (start /MIN /B E:\XAMPP\ingres\scripts\ctl.bat STOP)
if exist E:\XAMPP\mysql\scripts\ctl.bat (start /MIN /B E:\XAMPP\mysql\scripts\ctl.bat STOP)
if exist E:\XAMPP\postgresql\scripts\ctl.bat (start /MIN /B E:\XAMPP\postgresql\scripts\ctl.bat STOP)

:end

