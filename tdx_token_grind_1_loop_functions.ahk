winminimizeall
settitlematchmode, 2
clipboard = 
windowNames =
#singleinstance force
#InstallKeybdHook
#InstallMouseHook

start()

reload

exitapp


start(){
;msgbox ,,, start,1
	tooltip, %a_linenumber% , 0,0

	IfwinnotExist, ahk_exe RobloxPlayerBeta.exe
	{
		run , C:\Users\0001\AppData\Local\Roblox\Versions\version-5a21b87bbc2641cf\RobloxPlayerBeta.exe
		msgbox ,,, %A_ThisFunc% %a_linenumber% %clipboard%,1
		winwait , ahk_exe RobloxPlayerBeta.exe, , 10
		
		IfwinnotExist, ahk_exe RobloxPlayerBeta.exe
		{
			
			loop, 100
			{
				Process, Close, ahk_exe RobloxPlayerBeta.exe
				Process, Exist, ahk_exe RobloxPlayerBeta.exe
				if errorlevel = 0
					break
				sleep 100
			}
		}		

		reload
	}
	
	sendinput, {blind}{lshift up}{s up}{w up}{space up}

	SetKeyDelay, 20 ,20
	SetTitleMatchMode, 2

	SetDefaultMouseSpeed , 0
	SetMouseDelay, 20
	SetMouseDelay, 20 , play

	SetKeyDelay, 5 ,5
	SetMouseDelay, 5
	SetMouseDelay, 5 , play

	SetKeyDelay, 10 ,10
	SetTitleMatchMode, 2
	SetDefaultMouseSpeed , 0
	SetMouseDelay, 1
	SetMouseDelay, 1 , play

	coordmode, mouse, relative
	coordmode, pixel, relative
	coordmode, tooltip, relative

	winminimize, ahk_exe RobloxPlayerBeta.exe
	winrestore, ahk_exe RobloxPlayerBeta.exe
	winmaximize, ahk_exe RobloxPlayerBeta.exe

	winactivate, ahk_exe RobloxPlayerBeta.exe
	winwaitactive, ahk_exe RobloxPlayerBeta.exe

	WinGetPos, X, Y, Width, Height, ahk_exe RobloxPlayerBeta.exe
	 
	WinGetTitle, wintitle , A
	
	ifwinactive , ahk_exe RobloxPlayerBeta.exe
		inroblox()
}

inroblox(){
	tooltip, %A_ThisFunc% , 0 , 0

	winactivate, ahk_exe RobloxPlayerBeta.exe
	winwaitactive, ahk_exe RobloxPlayerBeta.exe

	checkx = 1164 
	checky = 389
	checkcolor = 0xF8F7F7 ; check if TDX blue play button
	mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
	sleep 50
	PixelGetColor, Pcolor, %checkx% , %checky%
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	if (pcolor = checkcolor ) ; in lobby not in battle
	{
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
		;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	}


checkx = 1121 
	checky = 621
	checkcolor = 0xFFFFFF ; check if TDX blue play button
	mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
	sleep 50
	PixelGetColor, Pcolor, %checkx% , %checky%
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	if (pcolor = checkcolor ) ; in lobby not in battle
	{
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
		;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	}
	
yesinbattle() ; isinbattle()
isinmap()


	checkx = 31 
	checky = 117
	checkcolor = 0xF8F5F4 ; check if home button
 	mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
	sleep 50
 	PixelGetColor, Pcolor, %checkx% , %checky%
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;left;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
if (pcolor = checkcolor ) ; in lobby not in battle
{
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
		;msgbox ,,, inroblox %a_linenumber% %clipboard%,1

	checkx = 1040 
	checky = 57
	checkcolor = 0x272221 ; check if search bar
 	mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
	sleep 50
 	PixelGetColor, Pcolor, %checkx% , %checky%
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	if (pcolor = checkcolor ) ; in lobby not in battle
	{
		;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
		
		loop, 10
		{
		clipboard = 
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}{ctrl down}a{ctrl up}tower defense x{ctrl down}ac{ctrl up}
		if (clipboard = "tower defense x")
			{
				if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput , {enter}
				loop, 50
				{
					sleep 100
					checkx = 366 
					checky = 589
					checkcolor = 0xFF724A ; check if TDX blue play button
					mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
					sleep 50
					PixelGetColor, Pcolor, %checkx% , %checky%
					sleep 50
					clipboard = %pcolor%
					tooltip , %a_linenumber% %clipboard%,0,0
					;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
					if (pcolor = checkcolor ) ; in lobby not in battle
					{
					if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
						;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
						break
					}
					;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
				}
				
				break
			}
		}
	}
 
					checkx = 1164 
					checky = 389
					checkcolor = 0xF8F7F7 ; check if TDX blue play button
					mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
					sleep 50
					PixelGetColor, Pcolor, %checkx% , %checky%
					sleep 50
					clipboard = %pcolor%
					tooltip , %a_linenumber% %clipboard%,0,0
					;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
					if (pcolor = checkcolor ) ; in lobby not in battle
					{
					if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
						;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
					}
					
	reload
}


isinbattle()
isinmap()

	loop 3
		{
 if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput  {click 405 , 818 left 3} ; change mode
			sleep 250
 if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput  {click 678 , 255 left 3} ; party
			sleep 250
 if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput  {click 1041 , 235 left 3} ; events
			sleep 250
		if WinActive("ahk_exe RobloxPlayerBeta.exe")
 if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput  {click 914 , 310 left 3} ; search 
 			sleep 250
 if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput  {click 874 311 left 3}shattered ; shattered moon
	
checkx = 831
checky = 410
checkcolor = 0x060100
if (checkpixel(checkx, checky, checkcolor) = true) 
{

		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% %checky% left 5}
		
	;msgbox ,,, true ,1 

	
}

			mousemove 471 , 748
			PixelGetColor, Pcolor, 471 , 748
			sleep 50
			clipboard = %pcolor%
			tooltip , %a_linenumber% %clipboard%,0,0
			;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
			mousemove 471 , 748
			PixelGetColor, Pcolor, 471 , 748
			sleep 50
			clipboard = %pcolor%
			tooltip , %a_linenumber% %clipboard%,0,0
			;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
			if (pcolor = "0x181E4D") ; shattered moon selected
				{	if WinActive("ahk_exe RobloxPlayerBeta.exe") 
									sendinput {click 1374 , 815 left 1}
				if WinActive("ahk_exe RobloxPlayerBeta.exe") 
									sendinput {click 1374 , 815 left 1}
					;sleep 2000
				}
		}	


	checkx = 224
	checky = 449
	checkcolor = 0x00FFB4
 	mousemove %checkx% , %checky% , 0 ;, Pcolor 0x000000 PixelRGB 0x000000 
	sleep 50
 	PixelGetColor, Pcolor, %checkx% , %checky%
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	if (pcolor = checkcolor ) ; in lobby 
	{
		
 
	checkx = 990
	checky = 689
	checkcolor = 0x1F1F1F
 	mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
	sleep 50
 	PixelGetColor, Pcolor, %checkx% , %checky%
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	if (pcolor = checkcolor ) ; in lobby not in battle
	{
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
	}

	checkx = 1274
	checky = 375
	checkcolor = 0x000000
 	mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
 	sleep 50
	PixelGetColor, Pcolor, %checkx% , %checky%
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	if (pcolor = checkcolor ) ; in lobby not in battle
	{
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
	}
	
	
	checkx = 1425
	checky = 346
	checkcolor = 0x000000
 	mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
 	sleep 50
	PixelGetColor, Pcolor, %checkx% , %checky%
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	if (pcolor = checkcolor ) ; in lobby not in battle
	{
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
	}
	
	mousemove 1892 , 449 
	sleep 50
	PixelGetColor, Pcolor, 229 , 444
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	if (pcolor = "0xA9F300" or pcolor = "0x00F3A9" ) ; in lobby not in battle
	{

	checkx = 993
	checky = 243
	checkcolor = 0x00FFB4
 	mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
 	sleep 50
	PixelGetColor, Pcolor, %checkx% , %checky%
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	if (pcolor = checkcolor ) ; in lobby not in battle
	{
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
	}
 
	checkx = 1002
	checky = 846
	checkcolor = 0x00FFB4
 	mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
 	sleep 50
	PixelGetColor, Pcolor, %checkx% , %checky%
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	if (pcolor = checkcolor ) ; in lobby not in battle
	{
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
	}

	checkx = 1444
	checky = 325
	checkcolor = 0x000000
 	mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
 	sleep 50
	PixelGetColor, Pcolor, %checkx% , %checky%
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	if (pcolor = checkcolor ) ; in lobby not in battle
	{
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
	}
	
	checkx = 1352
	checky = 220
	checkcolor = 0x000000
 	mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
 	sleep 50
	PixelGetColor, Pcolor, %checkx% , %checky%
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	if (pcolor = checkcolor ) ; in lobby not in battle
	{
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
	}
	
	checkx = 668
	checky = 246
	checkcolor = 0x06281E
	mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
	sleep 50
	PixelGetColor, Pcolor, %checkx% , %checky%
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
	if (pcolor = checkcolor ) ; in lobby not in battle
	{
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
	}
	tooltip
	
 
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 1340 , 185 left 1}
		sleep 252 
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 1592 , 193 left 1}
		sleep 252
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 1124 835 left 1}
		sleep 252
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 696 259 left 1}
		sleep 252
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 696 259 left 1}
		sleep 252
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 485 826 left 1}
		sleep 252
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 485 826 left 1}
		sleep 252
		loop 3
		{
 if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput  {click 405 , 818 left 3} ; change mode
			sleep 252
 if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput  {click 678 , 255 left 3} ; party
			sleep 252
 if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput  {click 1041 , 235 left 3} ; events
			sleep 252
 if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput  {click 914 , 310 left 3} ; search 
 			sleep 252
 if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput  {click 874 311 left 3}shattered ; shattered moon
	
checkx = 831
checky = 410
checkcolor = 0x060100
if (checkpixel(checkx, checky, checkcolor) = true) 
{

 if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% %checky% left 5}
	;msgbox ,,, true ,1 

	
}

			sleep 252
			
			mousemove 471 , 748
			PixelGetColor, Pcolor, 471 , 748
			sleep 50
			clipboard = %pcolor%
			tooltip , %a_linenumber% %clipboard%,0,0
			;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
			mousemove 471 , 748
			PixelGetColor, Pcolor, 471 , 748
			sleep 50
			clipboard = %pcolor%
			tooltip , %a_linenumber% %clipboard%,0,0
			;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
			if (pcolor = "0x181E4D") ; shattered moon selected
				{	if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 1374 , 815 left 1}
				if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 1374 , 815 left 1}
					sleep 2000
				}
		}	

		loop 3
		{
			checkx = 668
			checky = 246
			checkcolor = 0x06281E
			mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
			sleep 50
			PixelGetColor, Pcolor, %checkx% , %checky%
			sleep 50
			clipboard = %pcolor%
			tooltip , %a_linenumber% %clipboard%,0,0
			;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
			if (pcolor = checkcolor ) ; in lobby not in battle
			{
			if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click %checkx% , %checky% left 1}
			}

			mousemove 1564 , 201
			PixelGetColor, Pcolor, 1564 , 201
			sleep 50
			clipboard = %pcolor%
			tooltip , %a_linenumber% %clipboard%,0,0
			;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
			if (pcolor <> "0x000000" and pcolor <> "0x000000" ) ; not in "play group"
				reload

			
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 1071 243 left 1}
			sleep 252
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 874 311 left 1}
			sleep 252
			if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput  {click 874 311 left 1}shattered{click 824 , 381 left 1}
			sleep 252
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 824 , 381 left 1}
			sleep 252
				
			mousemove 471 , 748
			PixelGetColor, Pcolor, 471 , 748
			sleep 50
			clipboard = %pcolor%
			tooltip , %a_linenumber% %clipboard%,0,0
			;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
			mousemove 471 , 748
			PixelGetColor, Pcolor, 471 , 748
			sleep 50
			clipboard = %pcolor%
			tooltip , %a_linenumber% %clipboard%,0,0
			;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
			if (pcolor = "0x181E4D" or pcolor = "0x4D1E18" ) ; shattered moon selected
			{
				loop 3
				{
				checkx = 668
				checky = 246
				checkcolor = 0x06281E
				mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
				sleep 50
				PixelGetColor, Pcolor, %checkx% , %checky%
				sleep 50
				clipboard = %pcolor%
				tooltip , %a_linenumber% %clipboard%,0,0
				;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
				if (pcolor <> checkcolor ) ; in lobby not in battle
				{
					reload
				}
				if WinActive("ahk_exe RobloxPlayerBeta.exe") 
									sendinput {click 1374 , 815 left 1}
					sleep 2000
				}
}				
				reload
			}		
		}
		reload

	}
tooltip
}

isinlobby()
{

}
isinmap(){
	yesinbattle()
	tooltip, %A_ThisFunc% , 0 , 0
		mousemove 1892 , 449 
		PixelGetColor, Pcolor, 1892 , 449 ;, Pcolor 0x00FFB4 PixelRGB 0xB4FF00 
		sleep 50
		clipboard = %pcolor%
		tooltip , %a_linenumber% %clipboard%,0,0
	;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
		if (pcolor = "0x00FFB4" or pcolor = "0xB4FF00" ) ; in map
		{
			yesinmap()
		}
	tooltip
}

isinbattle(){
	tooltip, %A_ThisFunc% , 0 , 0
	;msgbox ,,, %A_ThisFunc% %a_linenumber% %clipboard%,1

			checkx = 1254
			checky = 987
			checkcolor = 0x00FFB3
			mousemove %checkx% , %checky% , 0 ;, Pcolor 0x000000 PixelRGB 0x000000 
			sleep 50
			PixelGetColor, Pcolor, %checkx% , %checky%
			sleep 50
			clipboard = %pcolor%
			tooltip , %a_linenumber% %clipboard%,0,0
			;msgbox ,,, %A_ThisFunc% %a_linenumber% %pcolor% %checkcolor% ,1
			if (pcolor = checkcolor ) ; in lobby not in battle
			{
				yesinbattle()
			}

tooltip
}

yesinmap(){
	tooltip, %A_ThisFunc% , 0 , 0
	if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 1194 , 766 left 3 } ; return to lobby
	sleep 100
	if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 1052 , 161 left 3} ;skip wave
	sleep 100
	if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 887 , 550 left 3} ;normal mode
	sleep 100
	if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 982 , 740 left 3} ;begin
	sleep 100
	if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 802 , 424 left 3} ;assault loadout
	sleep 100
	tooltip
}

yesinbattle(){

			checkx = 1254
			checky = 987
			checkcolor = 0x00FFB3
			mousemove %checkx% , %checky% , 0 ;, Pcolor 0x000000 PixelRGB 0x000000 
			sleep 50
			PixelGetColor, Pcolor, %checkx% , %checky%
			sleep 50
			clipboard = %pcolor%
			tooltip , %a_linenumber% %clipboard%,0,0
			;msgbox ,,, %A_ThisFunc% %a_linenumber% %pcolor% %checkcolor% ,1
			if (pcolor <> checkcolor ) ; not in battle
			{
				;msgbox ,,, %A_ThisFunc% %a_linenumber% %pcolor% %checkcolor% , 5
				return
			}
			
	;msgbox ,,, %A_ThisFunc% %a_linenumber% %pcolor% %checkcolor% ,1		
	tooltip, %A_ThisFunc% , 0 , 0
	;msgbox ,,, %A_ThisFunc% %a_linenumber% %clipboard%,1

	loop, 1
	{	
		;SetMouseDelay, 50
		if WinActive("ahk_exe RobloxPlayerBeta.exe")
			MouseClickDrag, Right, 1000, 500, 1000, 800, 3 ;overhead view
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
			sendinput {Wheeldown 30} ;max zoom out 
		;if WinActive("ahk_exe RobloxPlayerBeta.exe") 
			;sendinput {Wheeldown 30} ;max zoom out 
		;if WinActive("ahk_exe RobloxPlayerBeta.exe") 
			;sendinput {Wheelup 10} ; specific zoom in
	}

	mouseminX = 750
	mouseminY = 550
	mousemaxX = 1250 
	mousemaxY = 900 ; 900
	
	charposx = 968
	charposy = 539
/*
		mouseminX := charposx - a_index * 10
		mouseminY := charposy - a_index * 10
		mousemaxX := charposx + a_index * 10
		mousemaxY := charposy + a_index * 10
*/


		mouseminX = 400 ; 500
		mouseminY = 300
		mousemaxX = 1700 ; 1000 ; 1500 
		mousemaxY = 550 ; 800 ; 900

		checkx = 1254
		checky = 987
		checkcolor = 0x00FFB3
		mousemove %checkx% , %checky% , 0 ;, Pcolor 0x000000 PixelRGB 0x000000 
		sleep 50
		PixelGetColor, Pcolor, %checkx% , %checky%
		sleep 50
		clipboard = %pcolor%
		tooltip , %a_linenumber% %clipboard%,0,0
		;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
		if (pcolor <> checkcolor ) ; in lobby not in battle
		{
			;msgbox ,,, NOT %A_ThisFunc% %a_linenumber% %clipboard%,10
			
		}

		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 1194 , 766 left 1} ; return to lobby
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 1202 , 384 left 1} ;close speed control
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 				sendinput {click 1052 , 161 left 1} ;skip wave
		

 checkx = 1039
 checky = 161
 checkcolor = 0x00EDD7
 
  if (checkpixel(checkx, checky, checkcolor) = true) 
	sendinput {click %checkx%, %checky% left 1}

 checkx = 1039
 checky = 161
 
 
		factors = 1,-1
		randX := charposX 
		randY := charposY 
		
		loop, 10
		{
			tooltip
			mainloopindex := a_index
			
			if not WinActive("ahk_exe RobloxPlayerBeta.exe")
				reload
			if WinActive("ahk_exe RobloxPlayerBeta.exe") 
					sendinput q{click %charposX% , %charposY% left 2}{click 306 , 746 left 2}{click 306 , 638 left 1}
			if WinActive("ahk_exe RobloxPlayerBeta.exe") 
					sendinput 6{click %charposX% , %charposY% left 2}{click 306 , 746 left 2}{click 306 , 638 left 1}q
			factors := "1,-1"
			Loop, Parse, factors , `,
			{
				thisfactor := A_LoopField + 0
				randX := charposX + (thisfactor * mainloopindex *(( mousemaxX - charposX)/5))
				randX := floor(randX)
				;msgbox ,, , randX %randX% randY %randY% charposX %charposX% thisfactor %thisfactor%  mainloopindex %mainloopindex%   mousemaxX %mousemaxX% charposX %charposX% 
				;msgbox ,, , randX %randX% randY %randY% charposX %charposX% thisfactor %thisfactor%  mainloopindex %mainloopindex%   mousemaxX %mousemaxX% charposX %charposX% 
				if WinActive("ahk_exe RobloxPlayerBeta.exe") 
					sendinput q{click %randX% , %randY% left 2}{click 306 , 746 left 2}{click 306 , 638 left 1}
				if WinActive("ahk_exe RobloxPlayerBeta.exe") 
				{
					sendinput 6{click %randX% , %randY% left 2}{click 306 , 746 left 2}{click 306 , 638 left 1}
						/*			wintitle Roblox 
					 screen 183 , 584  
					 Pcolor 0xFFFFFF 
					 PixelRGB 0xFFFFFF ;, 0xFFFFFF 
					 relative 191 , 592 ;, Pcolor 0xFFFFFF PixelRGB 0xFFFFFF  
					 client 183 , 561 ;, 0xFFFFFF 
					 VarWin: 0x60a3e  VarControl:	
					 */
					 
					 
					checkx = 194
					checky = 583
					checkcolor = 0xFFFFFF
					if (checkpixel(checkx, checky, checkcolor) = false){ ; false = unit not set to "first" 
						loop, 5 {
							if (checkpixel(checkx, checky, checkcolor) = true)
								break
							else
								sendinput c{click 306 , 746 left 2}{click 306 , 638 left 1}
						}
					}
					sendinput q
				}
			}	
			
			;tooltip , %A_ThisFunc% %a_linenumber%  randX %randX%  randY %randY% ,  %randX% , %randY%
			;msgbox ,, , %A_ThisFunc% %a_linenumber%  randX %randX%  randY %randY% ,  %randX% , %randY%
			
				if ( randX < mouseminX or randX > mousemaxX)
					break
		}
		
		randX := charposX 
		randY := charposY 
		loop, 10
		{
			tooltip
			mainloopindex := a_index

			if not WinActive("ahk_exe RobloxPlayerBeta.exe")
				reload
			if WinActive("ahk_exe RobloxPlayerBeta.exe") 
					sendinput q{click %charposX% , %charposY% left 2}{click 306 , 746 left 2}{click 306 , 638 left 1}
			if WinActive("ahk_exe RobloxPlayerBeta.exe") 
					sendinput 6{click %charposX% , %charposY% left 2}{click 306 , 746 left 2}{click 306 , 638 left 1}q
			
			factors := "1,-1"
			Loop, Parse, factors , `,
			{
				thisfactor := A_LoopField + 0
				randY := charposY + (thisfactor * mainloopindex *(( mousemaxY - charposY)/5))
				randY := floor(randY)
				
				if WinActive("ahk_exe RobloxPlayerBeta.exe") 
						sendinput q{click %randX% , %randY% left 2}{click 306 , 746 left 2}{click 306 , 638 left 1}
				if WinActive("ahk_exe RobloxPlayerBeta.exe") 
						sendinput 6{click %randX% , %randY% left 2}{click 306 , 746 left 2}{click 306 , 638 left 1}q
			}	
			
			tooltip , %A_ThisFunc% %a_linenumber%  randX %randX%  randY %randY% ,  %randX% , %randY%
			
				if ( randY < mouseminY or randY > mousemaxX)
					break
		}
	;msgbox ,,, %A_ThisFunc% %a_linenumber% %clipboard%,1

	tooltip

	;msgbox ,,, DONE %A_ThisFunc% %a_linenumber% %pcolor% %checkcolor% , 1
}

checkpixel(checkx , checky, checkcolor){

 mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
 sleep 50
 PixelGetColor, Pcolor, %checkx% , %checky%, RGB ; Added RGB mode here
 sleep 50
 clipboard = %pcolor%
 tooltip , %a_linenumber% %clipboard% , %checkx% , %checky%
 ;msgbox ,,, inroblox %a_linenumber% %clipboard%,1
 tooltip
	
	
 if (pcolor = checkcolor)
		return true
 else
		return false
}


reload
exitapp

!esc::
+esc::
#esc::
exitapp
