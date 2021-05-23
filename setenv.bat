@ECHO OFF

::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: YOU HAVE TO SET THE JAVA_HOME
::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: must point to jre/jdk home
SET JAVA_HOME=C:\Program Files\Java\jre1.8.0_211

::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: DON'T TOUCH THE LINES BELOW
::::::::::::::::::::::::::::::::::::::::::::::::::::::::

IF NOT EXIST "%JAVA_HOME%" (
	ECHO [setenv.bat] The JAVA_HOME variable is not defined correctly.
	EXIT
)

SET PATH=%JAVA_HOME%\bin;%PATH%
SET CATALINA_HOME=%~dp0tomcat
SET CATALINA=%CATALINA_HOME%\bin\catalina.bat
