# AHK

spyoptionscheck:
settimer, killexcelpopup, off
CoordMode, pixel, screen

FormatTime , TheMinutes , %a_now% , mm
FormatTime , Thehours , %a_now% , Hmm

	;msgbox %Thehours%

if (Thehours >= 915 and thehours <= 1615)
		{
			if  ( theminutes = "00" or theminutes = "15" or theminutes = "30" or theminutes = "45" ) 
			{
				gosub spyoptionsdl
				;msgbox DL
			}
		}
	
settimer, spyoptionscheck, 20000


return
