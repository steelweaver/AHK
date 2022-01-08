checkminecraft:

controlclick, Button2 , checkgpustock.ahk ahk_class #32770 , Could not close the previous instance of this script

; Minecraft ahk_class ApplicationFrameWindow

Filefullpath = %a_scriptdir%\minecraftlog.log

	If DllCall("User32\OpenInputDesktop","int",0*0,"int",0*0,"int",0x0001L*1)
		1 = 1 ; MsgBox,, Lock Status, Desktop is unlocked!

	If !DllCall("User32\OpenInputDesktop","int",0*0,"int",0*0,"int",0x0001L*1)
	{
		loop, 100
		{
			filedelete, %Filefullpath%
			Run, cmd /c del %Filefullpath%,, ;hide 
			ifnotexist, %Filefullpath%
				break
			sleep 500
			;MsgBox ,,, %a_index% filedelete %Filefullpath%  ,1
		}
	}

	ifWinnotexist, Minecraft ahk_class ApplicationFrameWindow ;"	else
	{
		filedelete, %Filefullpath%
	}
	else
	{
		;clipboard = %a_scriptdir%
		FormatTime , TimeString , %a_now% , yyyy-MM-dd_HH'h'mm'm'ss's'
		
		fileappend, %a_now%`,Minecraft`n , %Filefullpath%
		
		loop, 100
		{
			ifexist, %Filefullpath%
				break
			sleep 100
		}

			FileCreated = 
			FileModified = 

		ifexist, %Filefullpath%
		{
			;MsgBox ,,, Filefullpath %Filefullpath%`nFileCreated %FileCreated%`nFileModified %FileModified%`ncomptime %comptime% ,10000 ;"
			FileGetTime, FileCreated , %Filefullpath%, C
			FileGetTime, FileModified , %Filefullpath%, M
			comptime = %FileModified%
			EnvSub, comptime , %FileCreated% ,  minutes 
			;MsgBox ,,, Filefullpath %Filefullpath%`nFileCreated %FileCreated%`nFileModified %FileModified%`ncomptime %comptime% ,10000 ;"
		}
		
		tooltip, %comptime% , 0 ,0 

		if (comptime >=30)
		{	
			loop, 100
			{
				filedelete, %Filefullpath%
				Run, cmd /c del %Filefullpath%,, ;hide 
				ifnotexist, %Filefullpath%
					break
				sleep 500
				;MsgBox ,,, %a_index% filedelete %Filefullpath%  ,1
			}
			FileCreated = 
			FileModified = 
			
			MsgBox ,,, %FileCreated%`n %FileModified%`n%comptime% ,5
			tooltip
			run, Rundll32.exe user32.dll`,LockWorkStation
		}
	}	
		

return
