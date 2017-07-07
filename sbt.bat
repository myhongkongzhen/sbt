set SCRIPT_DIR=%~dp0
set FN=%SCRIPT_DIR%sbtconfig.txt  
java -Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M -jar -Dfile.encoding=UTF8 "-Dsbt.boot.directory=%SCRIPT_DIR%boot" "-Dsbt.ivy.home=%SCRIPT_DIR%.ivy" "-Dsbt.global.base=%SCRIPT_DIR%.sbt" "-Dsbt.repository.config=%SCRIPT_DIR%repo.properties" "-Dsbt.override.build.repos=true" "%SCRIPT_DIR%sbt-launch.jar" %*