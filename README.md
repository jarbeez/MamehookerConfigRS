# Mamehooker Config for RetroShooter Light Guns

Test framework for RetroShooter light guns with Mamehooker support. 

Framework allows users to specify installations of Mamehooker, DemulShooter, and Emulators in order to run games through AutoHotKey (AHK) scripts and verify Mamehooker ini files.

In the Mamehooker ini files, it is currently assumed 2 RS3 Reapers are in use: Player 1 gun is set to port COM 6 and Player 2 gun is set to port COM 6.

Alternative COM port assignments can be made. Modify the `rs3_setcoms.mhs` script file to use the COM ports that your guns are set to.

## Setup

### Installing apps

In order to test, one needs Mamehooker, Demulshooter, and Emulators/Roms.

The latest release of Mamehooker is [5.1](http://dragonking.arcadecontrols.com/files/mamehooker5.1.rar).

The latest release of Demulshooter can be found [here](https://github.com/argonlefou/DemulShooter/releases).

Once DemulShooter has been installed, be sure to launch DemulShooter_GUI, select page Outptus, and select Enable Outputs and Windows Messages outputs (Mamehooker, etc...)

Information on Emulators / ROMs can be found [here](https://lightgunlunatics.com/). Download Emulators / ROMs for games in your personal collection.

### Setting environment variables

The following environment variables need to be defined in Windows OS from System Properties -> Environment Variables -> User variables

| Env Var | Description |
| ----------- | ----------- |
| MAMEHOOK_HOME | Absolute path to mamehooker installation folder (e.g. C:\emu_tools\mamehooker5.1) |
| MAMEHOOK | Absolute path to mamehooker EXE (e.g. C:\emu_tools\mamehooker5.1\mamehook.exe) |
| DEMULSHOOTER | Absolute path to Demulshooter EXE (e.g. C:\emu_tools\DemulShooter_v13.5\DemulShooter.exe) |
| SM2_HOME | Absolute path to model 2 emulator installation folder (e.g. C:\emu\sm2) |

## Workflow

The workflow assumes setup has been completed.

Development/testing of Mamehooker ini files involves:
- Tinkering with files for your game within local repo `ini` and `scripts` folders
- Updating the `ini` and `scripts` folders in the Mamehooker installation (done via MameHookerConfigs\update.bat)
- Running game from AHK script (located in MameHookerConfigs\Retro Shooter RS3 Reaper\ahk subfolders)
- Updating ini / script files, as needed
- Committing changes to remote repo, so that other users benefit from your work

## Untested Configs

This area is meant to document any configs that are in the repo but are not yet working. This will be updated over time.
