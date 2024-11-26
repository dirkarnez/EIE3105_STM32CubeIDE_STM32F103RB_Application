REM run as Administrator
@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set DOWNLOADS_DIR_LINUX=%DOWNLOADS_DIR:\=/%
set Software_DIR=D:\Softwares

SET PATH=^
%DOWNLOADS_DIR%\STM32CubeIDE-portable-v1.6.1\plugins\com.st.stm32cube.ide.mcu.externaltools.cubeprogrammer.win32_2.1.400.202404281720\tools\bin;^
%Software_DIR%\STM32CubeIDE-portable-v1.6.1\plugins\com.st.stm32cube.ide.mcu.externaltools.cubeprogrammer.win32_2.1.400.202404281720\tools\bin;

cd .ci && ( (  STM32_Programmer_CLI.exe -c port=SWD freq=4000 -w EIE3105_STM32CubeIDE_STM32F103RB_Application.elf -s && echo ok ) || echo failed ) && pause

