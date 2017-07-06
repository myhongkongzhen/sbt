set SCRIPT_DIR=%~dp0
set SBT_OPTS="-Dsbt.override.build.repos=true"
java -Xms512M -Xmx1536M "-Dsbt.override.build.repos=true" -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M -jar "%SCRIPT_DIR%sbt-launch.jar" %*