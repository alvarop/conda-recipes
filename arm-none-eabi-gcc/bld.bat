@echo off

SET TARGET="arm-none-eabi-gcc"
SET TARGET_PREFIX="%PREFIX%/%TARGET%"
mkdir "%PREFIX%"
mkdir "%PREFIX%"\bin
mkdir "%TARGET_PREFIX%"
COPY  "%SRC_DIR%\*" "%TARGET_PREFIX%"
pushd "%PREFIX%"\bin
mklink /d "..\"%TARGET%"\bin\*" ".\"
popd