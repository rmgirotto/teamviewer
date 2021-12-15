@echo off
title REMOVE SUPORTE CRIAR v2
mode con:cols=65 lines=10
SET versao=2.0.7

echo.
echo.
@echo    ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
@echo    บ                                                         บ
@echo    บ                  INICIANDO PROCESSO DE                  บ
@echo    บ                     DESINSTALACAO...                    บ
@echo    บ                                                   v%versao%บ
@echo    ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
timeout /t 3 >nul
cls

echo.
echo.
@echo    ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
@echo    บ                                                         บ
@echo    บ              AGUARDE ENQUANTO E REALIZADO               บ
@echo    บ                A LIMPEZA DO COMPUTADOR!!                บ
@echo    บ                                                         บ
@echo    ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
timeout /t 10 >nul
cls

@echo off
echo.
echo.
@echo    ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
@echo    บ                                                         บ
@echo    บ                     PARANDO SERVICO...                  บ
@echo    บ                                                         บ
@echo    ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
NET STOP teamviewer >nul 2>&1
timeout /t 3 >nul
cls

echo.
echo.
@echo    ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
@echo    บ                                                         บ
@echo    บ                   REMOVENDO SERVICO...                  บ
@echo    บ                                                         บ
@echo    ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
sc delete teamviewer >nul 2>&1
sc delete teamviewer6 >nul 2>&1
sc delete teamviewer9 >nul 2>&1
timeout /t 3 >nul
cls

echo.
echo.
@echo    ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
@echo    บ                                                         บ
@echo    บ                         AGUARDE...                      บ
@echo    บ                                                         บ
@echo    ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
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
@echo    ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
@echo    บ                                                         บ
@echo    บ                       CONCLUINDO...                     บ
@echo    บ                                                         บ
@echo    ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

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
@echo    ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
@echo    บ                                                         บ
@echo    บ             FINALIZANDO EM POUCOS SEGUNDOS...           บ
@echo    บ                                                         บ
@echo    ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\TeamViewer" /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\TeamViewer 6" /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\TeamViewer 9" /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\TeamViewer 9" /f >nul 2>&1
timeout /t 5 >nul >nul
cls


echo.
@echo    ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
@echo    บ                                                         บ
@echo    บ                      GRUPO CRIAR                        บ
@echo    บ           site  http://www.grupocriar.com.br            บ
@echo    บ              telefone      DDD (16) 3512-9000           บ
@echo    บ                                                         บ
@echo    ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
timeout /t 5 >nul
cls

echo.
echo.
echo.
echo    ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
@echo    บ                                                         บ
echo    บ                    versao: v%versao%                       บ
echo    บ                2013 (c) All rights reserved             บ
@echo    บ                                                         บ
echo    ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
timeout /t 5 >nul
exit