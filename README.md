# Republic Commando console commands for XBOX
This is a custom PlayerInput class to use for XBOX version of Republic Commando.
It allows the user to open a virtual keyboard on screen and enter any string as a console command.

# How to install
Requires a modded XBOX console with the game files saved on the HDD!
Download the latest XBOX.u file from Releases.
Put the XBOX.u file into Republic Commando\Properties folder.
Go to Republic Commando\System folder and open user.ini file with notepad.
Inside user.ini file, search for "GameY=Jump" and replace it with "GameY=set ctplayer inputclass class'XBOX.CXPI'".
Once done, start the game, create a new profile and load up a map. When map is loaded, press the Y button, save the profile and close the game.
To verify everything worked, go to \E\UDATA\4c41001a\E5691CD4A62B\ (hashes will be different!, the location where savegames are stored on the xbox partition) and open user.ini file with notepad.
At the bottom for [CTGame.CTPlayer], it should say InputClass=Class'XBOX.CXPI'
If it does, congratulations, you installed it. You can go back to user.ini file inside Republic Commando\System folder and revert changes back to "GameY=Jump".
The virtual keyboard is now bound to X button (reload) on your controller from where you can input commands.

# Need help?
Got questions or problems, check out swrc-modding.net

# Video
https://www.youtube.com/watch?v=9zvXnhv2AIw