@echo off
title REMOVE SUPORTE v2
mode con:cols=65 lines=10
SET versao=2.0.7
set tempo3=timeout 3
set tempo5=timeout 5
set tempo10=timeout 10

echo.
echo.
@echo    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
@echo    º                                                         º
@echo    º                  INICIANDO PROCESSO DE                  º
@echo    º                     DESINSTALACAO...                    º
@echo    º                                                   v%versao%º
@echo    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
%tempo3%
cls

echo.
echo.
@echo    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
@echo    º                                                         º
@echo    º              AGUARDE ENQUANTO E REALIZADO               º
@echo    º                A LIMPEZA DO COMPUTADOR!!                º
@echo    º                                                         º
@echo    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
%tempo10%
cls

@echo off
echo.
echo.
@echo    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
@echo    º                                                         º
@echo    º                     PARANDO SERVICO...                  º
@echo    º                                                         º
@echo    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
NET STOP teamviewer >nul 2>&1
%tempo3%
cls

echo.
echo.
@echo    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
@echo    º                                                         º
@echo    º                   REMOVENDO SERVICO...                  º
@echo    º                                                         º
@echo    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
sc delete teamviewer >nul 2>&1
sc delete teamviewer6 >nul 2>&1
sc delete teamviewer9 >nul 2>&1
%tempo3%
cls

echo.
echo.
@echo    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
@echo    º                                                         º
@echo    º                         AGUARDE...                      º
@echo    º                                                         º
@echo    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
TASKKILL /F /IM "teamviewer.exe" >nul 2>&1
TASKKILL /F /IM "teamviewer_service.exe" >nul 2>&1
TASKKILL /F /IM "tv_w32.exe" >nul 2>&1


REM exclui arquivos do diretorio PREFETCH
cd\ >nul
cd windows\prefetch >nul
del /s /q *teamviewer*.exe >nul 2>&1
del /s /q *teamviewer*.dll >nul 2>&1
del /s /q *teamviewer*.log >nul 2>&1
del /s /q *teamviewer*.xml >nul 2>&1
del /s /q *teamviewer*.lnk >nul 2>&1
del /s /q *teamviewer*.otf >nul 2>&1
del /s /q *teamviewer*.pf >nul 2>&1
del /s /q *teamviewer*.cab >nul 2>&1
cd\ >nul

del /s /q *teamviewer*.exe >nul 2>&1
del /s /q *teamviewer*.dll >nul 2>&1
del /s /q *teamviewer*.log >nul 2>&1
del /s /q *teamviewer*.xml >nul 2>&1
del /s /q *teamviewer*.lnk >nul 2>&1
del /s /q *teamviewer*.otf >nul 2>&1
del /s /q *teamviewer*.pf >nul 2>&1
del /s /q *teamviewer*.cab >nul 2>&1

del /s /f /q C:\*teamviewer*.exe >nul 2>&1
del /s /f /q C:\*teamviewer*.dll >nul 2>&1
del /s /f /q C:\*teamviewer*.log >nul 2>&1
del /s /f /q C:\*teamviewer*.xml >nul 2>&1
del /s /f /q C:\*teamviewer*.lnk >nul 2>&1
del /s /f /q C:\*teamviewer*.otf >nul 2>&1
del /s /f /q C:\*teamviewer*.pf >nul 2>&1
del /s /f /q C:\*teamviewer*.cab >nul 2>&1
RD /S /Q C:\*teamviewer* >nul 2>&1
RD /S /Q appcrash*teamviewer* >nul 2>&1
RMDIR /S /Q *teamviewer* >nul 2>&1

cd %appdata% >nul 2>&1
RD /S /Q teamviewer >nul 2>&1
rem cd %homepath% >nul 2>&1
rem cd appdata\roaming >nul 2>&1
rem RD /S /Q teamviewer >nul 2>&1
cd.. >nul 2>&1
cd local\ >nul 2>&1
rmdir /q /s teamviewer >nul 2>&1
cd temp\ >nul 2>&1
RD /S /Q teamviewer >nul 2>&1
cd %homepath% >nul 2>&1
cd\ >nul 2>&1
cd "%ProgramFiles%\" >nul 2>&1
RD /S /Q teamviewer >nul 2>&1



echo.
echo.
@echo    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
@echo    º                                                         º
@echo    º                       CONCLUINDO...                     º
@echo    º                                                         º
@echo    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼

rem adicionado em 08/11/2021
cd\ >nul 2>&1
cd "%ProgramFiles%\" >nul 2>&1
RD /S /Q teamviewer >nul 2>&1
cd\ >nul 2>&1
cd "%ProgramFiles(x86)%"
rmdir /q /s teamviewer >nul 2>&1
rem cd "%ProgramFiles(x86)%\TeamViewer\printer\" >nul 2>&1
rem del /s /q *teamviewer*.ini >nul 2>&1
rem del /s /q *teamviewer*.cat >nul 2>&1
rem del /s /q *teamviewer*.gpd >nul 2>&1
rem del /s /q *teamviewer*.inf >nul 2>&1

cls

echo.
echo.
@echo    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
@echo    º                                                         º
@echo    º             FINALIZANDO EM POUCOS SEGUNDOS...           º
@echo    º                                                         º
@echo    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\TeamViewer" /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\TeamViewer 6" /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\TeamViewer 9" /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\TeamViewer 9" /f >nul 2>&1
%tempo5%
cls


echo.
@echo    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
@echo    º                                                         º
@echo    º                        OBRIGADO                         º
@echo    º                                                         º
@echo    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
%tempo5%
cls

echo.
echo.
echo.
echo    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
@echo    º                                                         º
echo    º                    versao: v%versao%                       º
echo    º                2013 (c) All rights reserved             º
@echo    º                                                         º
echo    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.
%tempo5%
exit
