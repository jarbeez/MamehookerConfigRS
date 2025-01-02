#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir \RetroBat-TriggerHappy\emulators\demul  ; Ensures a consistent starting directory.
#SingleInstance force

FileCopy, %A_WorkingDir%\biosini\biosUS.ini, %A_WorkingDir%\Demul.ini, 1
Run, nomousy.exe /hide
Run, \RetroBat-TriggerHappy\tools\DemulShooter\DemulShooter.exe -target=demul07a -rom=confmiss
sleep, 1000
Run, Demul.exe -run=naomi -rom=confmiss


Escape::
    Run, nomousy.exe
	WinClose, ahk_exe demul.exe
	sleep, 1000
    Process,Close,Demulshooter.exe
    Run,taskkill /im "Demulshooter.exe" /F
    ExitApp
return
