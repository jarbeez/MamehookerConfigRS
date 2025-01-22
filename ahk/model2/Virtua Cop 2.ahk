#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

EnvGet, MameHook, MAMEHOOK
EnvGet, DemulShooter, DEMULSHOOTER
EnvGet, Sm2, SM2_HOME

SetWorkingDir %Sm2%  ; Ensures a consistent starting directory.
#SingleInstance force

Run, %MameHook%
sleep, 2000
Run, %DemulShooter% -target=model2 -rom=vcop2
Run, emulator_multicpu.exe vcop2

Escape::
	WinClose, ahk_exe emulator_multicpu.exe
	sleep, 1000
    Process,Close,Demulshooter.exe
    Run,taskkill /im "Demulshooter.exe" /F
	sleep, 1000	
	Process,Close,mamehook.exe
    Run,taskkill /im "mamehook.exe" /F
    ExitApp
return
