cd C:\Documents and Settings\zz\Desktop\hrd_student_spring
call mvn clean install  
call move /Y target\hw1.war %CATALINA_HOME%\webapps
call %CATALINA_HOME%\bin\startup.bat
call "C:\Program Files\Opera\launcher.exe" "localhost:8080\hw1"