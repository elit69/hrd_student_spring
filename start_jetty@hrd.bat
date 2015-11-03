cd C:\Users\lit\Desktop\hrd_student_spring
call mvn clean install
"C:\Program Files (x86)\Opera\launcher.exe" "localhost:8080"
call java -cp jetty-runner-9.3.5.v20151012.jar org.eclipse.jetty.runner.Runner target/hw1.war

