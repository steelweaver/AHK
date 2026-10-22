start:
settitlematchmode, 2

windowNames =
#singleinstance force
#InstallKeybdHook
#InstallMouseHook

tooltip, %a_linenumber% , 0,0

;send, {blind}{lshift up}{s up}{w up}{space up}

SetKeyDelay, 20 ,20
SetTitleMatchMode, 2

SetDefaultMouseSpeed , 0
SetMouseDelay, 20
SetMouseDelay, 20 , play

SetKeyDelay, 5 ,5
SetMouseDelay, 5
SetMouseDelay, 5 , play

SetKeyDelay, 1 ,1
SetTitleMatchMode, 2
SetDefaultMouseSpeed , 0
SetMouseDelay, 1
SetMouseDelay, 1 , play

coordmode, mouse, relative
coordmode, pixel, relative
coordmode, tooltip, relative

/*
WinGet, id, List, Sans Titre

; Iterate through each window ID
Loop, %id%
{
    this_id := id%A_Index%
    ; Move the window to (0,0)
    winkill, ahk_id %this_id%
	winkill,  Sans Titre
}
*/

winminimize, ahk_exe RobloxPlayerBeta.exe
winrestore, ahk_exe RobloxPlayerBeta.exe
winmaximize, ahk_exe RobloxPlayerBeta.exe

winactivate, ahk_exe RobloxPlayerBeta.exe
winwaitactive, ahk_exe RobloxPlayerBeta.exe

WinGetPos, X, Y, Width, Height, ahk_exe RobloxPlayerBeta.exe
 
WinGetTitle, wintitle , A


mousemove 1892 , 449 
PixelGetColor, Pcolor,  229 , 444
	sleep 50
	tooltip , %a_linenumber% %clipboard%,0,0

if (pcolor =  "0xA9F300" or pcolor =  "0x00F3A9"  ) ; not in battle
{
	sendinput  { click 1340 , 185 left 1}
	sleep 1111 
	sendinput  {click 1592 , 193 left 1}
	sleep 1111
	sendinput  {click 1124 835 left 1}
	sleep 1111
	sendinput  {click 696 259 left 1}
	sleep 1111
	sendinput  {click 485 826 left 1}
	sleep 1111

loop 3
{
		sendinput  {click 1071 243 left 1}
		sleep 1111
	
		sendinput  {click 874 311 left 1}
		sleep 1111
		send shattered moon
		sleep 1111
		sendinput  {click 824 , 381  left 1}
		sleep 1111
		
	mousemove 471 , 748
	PixelGetColor, Pcolor,  471 , 748
	sleep 50
	tooltip , %a_linenumber% %clipboard%,0,0

	mousemove 471 , 748
	PixelGetColor, Pcolor,  471 , 748
	sleep 50
	tooltip , %a_linenumber% %clipboard%,0,0

	if (pcolor =  "0x181E4D" or pcolor =  "0x4D1E18"  ) ; shattered moon selected
	{
		loop 3
		{
		sendinput  {click 1374 , 815 left 1}
		sleep 2000
		}
		
		
		reload
	}		
}
	reload

}

mousemove 1892 , 449 
PixelGetColor, Pcolor,  1892 , 449 ;, Pcolor 0x00FFB4 PixelRGB 0xB4FF00  
	sleep 50
	tooltip , %a_linenumber% %clipboard%,0,0


if (pcolor =  "0x00FFB4" or pcolor = "0xB4FF00"  ) ; in map
{
	sendinput {click 1194 , 766 left 1 } ; return to lobby
	;skip wave
	sendinput  {click  1052 , 161  left 1}
	
	;normal mode
	sendinput  {click  887 , 550  left 10}
	sleep 100
	 ;begin
	sendinput {click  982 , 740  left 10}
	sleep 100
	 ;assault loadout
	sendinput {click  851 , 422  left 10}
	sleep 100
	
	/*
	wintitle Roblox 
 screen 729 , 558  
 Pcolor 0x0D1221 
 PixelRGB 0x21120D ;, 0x0D1221 
 relative 737 , 566 ;, Pcolor 0x0D1221 PixelRGB 0x21120D  
 client 729 , 535 ;, 0x0D1221 
 VarWin: 0x2007c4  VarControl:
 
	wintitle Roblox 
 screen 1290 , 924  
 Pcolor 0x070A13 
 PixelRGB 0x130A07 ;, 0x070A13 
 relative 1298 , 932 ;, Pcolor 0x070A13 PixelRGB 0x130A07  
 client 1290 , 901 ;, 0x070A13 
 VarWin: 0x2007c4  VarControl:
 
 */
}
 mouseclick, left, 1255 , 966
 PixelGetColor, Pcolor,  1255 , 966 ;, Pcolor 0x00FFB4 PixelRGB 0xB4FF00  
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0

if (pcolor =  "0x00FFB3" or pcolor = "0x00FFB3"  ) ; in battle
{
	mouseXmin = 750
	mouseYmin = 550
	mouseXmax = 1250 
	mouseYmax = 900 ; 900

	loop, 50
	{
	PixelGetColor, Pcolor,  1255 , 966 ;, Pcolor 0x00FFB4 PixelRGB 0xB4FF00  
	sleep 50
	clipboard = %pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0

if not (pcolor =  "0x00FFB3" or pcolor = "0x00FFB3"  ) ;  not in battle
	break
		random , randX , %mouseXmin% , %mouseXmax%
		random , randY , %mouseYmin% , %mouseYmax%
		;max bottom path ; sendinput {click  306 , 746 left 1}
		;max top path ; sendinput {click  306 , 638 left 1}

		sendinput {click 1194 , 766 left 1 } ; return to lobby
		sendinput qqq{click %randX% , %randY% left 1}{click  306 , 746 left 1}{click  306 , 638 left 1}6{click %randX% , %randY% left 5}{click  306 , 746 left 1}{click  306 , 638 left 1}qqq
		sendinput {click 1194 , 766 left 1 } ; return to lobby
		sendinput  {click  1202 , 384  left 1} ;close speed control
		sendinput  {click  1052 , 161  left 1} ;skip wave
	}

	;speed control
	sendinput  {click  1871 , 451  left 1}

	;1.5x speed
	sendinput  {click  1084 , 640  left 1}
	
	;close speed control
	sendinput  {click  1202 , 384  left 1} ;close speed control

	;skip wave
	sendinput  {click  1052 , 161  left 1}
}

gosub start
exitapp

sendinput  { click 1408 , 820 left 1}
sleep 500
sendinput  { click 1408 , 820 left 1}
sleep 500


 
/*
 sendinput {esc}
			sleep 1000
			sendinput {r}
			sleep 1000
			sendinput {enter}
			sleep 5000
*/
 
 exitapp
 
inroblox: ;roblox active

 PixelGetColor, Pcolor, 40 , 58 ;, Pcolor 0x2A2220 PixelRGB 0x20222A  
 sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	if (pcolor =  "0x272220" )
		mouseclick, left, 40 , 58, 1

 PixelGetColor, Pcolor, 111 , 785 ;, Pcolor 0xF8F7F7 PixelRGB 0xF7F7F8  
 sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0

	if (pcolor =  "0xF8F7F7" )
	{
		mousemove, 111 , 785
		sleep 1000
		mouseclick, left, 111 , 950, 1
	}
 
  
 
PixelGetColor, Pcolor,  1126 , 617 ;, Pcolor 0xFFFFFF PixelRGB 0xFFFFFF  
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0

	if (pcolor =  "0xFFFFFF" )
		mouseclick, left, 1126 , 617 , 1

loop, 5
{
	sendinput {WheelDown 2}
	;sendinput {Click 990 100 Right 1 Down}{Click  990 540 Right 1 up}{Click  990 540 Right 1 up}
}

PixelGetColor, Pcolor,  1135 , 765 ;, Pcolor 0xABFFD8 PixelRGB 0xD8FFAB  
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0

	if (pcolor =  "0xABFFD8" )
		mouseclick, left, 1135 , 765 , 1 

	PixelGetColor, Pcolor,  50 , 60 ;, Pcolor 0xF8F7F7 PixelRGB 0x000000  
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	
	if (pcolor <> "0xF8F7F7" )
		gosub start

	PixelGetColor, Pcolor, 267 , 525 ;, Pcolor 0x00FFB4 PixelRGB 0xB4FF00  
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
		if ( Pcolor = "0x00FFB4")
	{
		;msgbox ,,, %a_linenumber% pcolor %pcolor% ,1
		sendinput {lshift up}{w up}{a up}{s up}{d up}{space up}
		sendinput {lshift down}
		sendinput {space down}
		sendinput {s down}
		sleep 30000
		sendinput {s up}
		sendinput {w down}
		sleep 10000
		sendinput {w up}
	}
	
	PixelGetColor, Pcolor, 1878 , 440 ;, Pcolor 0xF8F7F7 PixelRGB 0x000000   PixelGetColor, Pcolor, 428 , 62 ;, Pcolor 0x00FAB0 PixelRGB 0xB0FA00  
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	if ( Pcolor  = "0x00FFB4")
	{	
			;mouseclick, left,  1391 , 411 			
			sendinput {lshift up}{w up}{a up}{s up}{d up}{space up}
			sendinput {esc}
			sleep 1000
			sendinput {r}
			sleep 1000
			sendinput {enter}
			sleep 5000

			loop, 10
			{
				loop, 5
				{
					sendinput {WheelDown 3}
					;sendinput {Click 990 100 Right 1 Down}{Click  990 540 Right 1 up}{Click  990 540 Right 1 up}
				}
				 ; mouseclick, left,  1391 , 411 			
				gosub sendclicks
			}
	}
	
	sendinput {lshift up}{w up}{a up}{s up}{d up}{space up}
	sendinput {esc}
	sleep 1000
	sendinput {r}
	sleep 1000
	sendinput {enter}
	sleep 5000

gosub start

exitapp

sendclicks:
StartTime := A_TickCount

PixelGetColor, Pcolor, 267 , 525 ;, Pcolor 0x00FFB4 PixelRGB 0xB4FF00  
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
		if ( Pcolor = "0x00FFB4")
			return
			
	mouseclick, left, 1251 , 306  ,1 

	mouseclick, left, 1379 , 400  ,1 ;, Pcolor 0x202D46 PixelRGB 0x462D20   ; loadout
 
	mouseclick, left,  1113 , 625 ,1 ;, Pcolor 0x014631 PixelRGB 0x314601  
 	
	mousemove, 1876 , 443 ; speed control button
	 		
 	PixelGetColor, Pcolor,  1076 , 532 ;, Pcolor 0xF9BD6E PixelRGB 0x6EBDF9  
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0

	if (pcolor =  "0xF9BD6E" )
		mouseclick, left, 1136 , 630 , 1 

	;mouseclick, left, 1314 , 323  1  ; support loadout
	PixelGetColor, Pcolor,  1190 , 753 ;, Pcolor 0x000000 PixelRGB 0x000000  
	
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0

 	if (pcolor =  "0x000000" )
		mouseclick, left, 1190 , 753 , 1 

		mouseclick, left, 1251 , 306  ,1  ;use own loadout
		
	PixelGetColor, Pcolor,  1216 , 372 ;, Pcolor 0x000000 PixelRGB 0x000000  
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	if (pcolor =  "0x000000" )
		mouseclick, left, 1216 , 372 , 1 

	PixelGetColor, Pcolor,  822 , 472  ;, Pcolor 0xFFFFFF PixelRGB 0x000000  
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	if (pcolor =  "0xFFFFFF" )
		mouseclick, left, 822 , 472 , 1 

	mouseclick, left, 1111 , 618 ,1  ;, Pcolor 0x014631 PixelRGB 0x314601   ; 1.5x speed
	mouseclick, left, 1486 , 410  , 11 ; Pcolor 0x0FA77A PixelRGB 0x7AA70F   ; loadout
	mouseclick, left, 1251 , 306  ,1  ;use own loadout
	
	mousemove, 271 , 520 ;, Pcolor 0x00FFB4 PixelRGB 0xB4FF00  
	;PixelGetColor, Pcolor, 271 , 520 ; Pcolor 0xFFFFFF

	PixelGetColor, Pcolor,  1216 , 372 ;, Pcolor 0x000000 PixelRGB 0x000000  
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	if (pcolor =  "0x000000" )
		mouseclick, left, 1216 , 372 , 1 

	PixelGetColor, Pcolor, 1876 , 443
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	
	;mouseclick, left, 1379 , 400  ,1 ;, Pcolor 0x202D46 PixelRGB 0x462D20   ; loadout	
	mouseclick, left, 1486 , 410  , 11 ; Pcolor 0x0FA77A PixelRGB 0x7AA70F   ; loadout
	mouseclick, left, 1251 , 306  ,1  ;use own loadout
	
	if (pcolor =  "0x00FFB4" ) ; if (pcolor <> "0x00FFB4" )
	{
		;sendinput 3
		;mousemove, 1314 , 323 ;, Pcolor 0xFFFFFF PixelRGB 0xFFFFFF  
		mouseclick, left, 1314 , 323 ,1 ;, Pcolor 0xFFFFFF PixelRGB 0xFFFFFF  
		;sleep 50
		
		mouseclick, left,  1871 , 454  , 1 ;, Pcolor 0x2FD97E PixelRGB 0x7ED92F  
		;sleep 50
		;sendinput {e 10}{r 2}
 
		;sendinput 3
		;mousemove, 1331 , 218 ;, Pcolor 0xFFFFFF PixelRGB 0xFFFFFF  
		mouseclick, left, 1331 , 218 ,1 ;, Pcolor 0xFFFFFF PixelRGB 0xFFFFFF  
		;sleep 50
		;sendinput {e 10}{r 2}
		
		;sendinput 3
		;mousemove, 1191 , 750 ;, Pcolor 0xFFFFFF PixelRGB 0xFFFFFF  
		mouseclick, left, 1191 , 750 ,1 ;, Pcolor 0xFFFFFF PixelRGB 0xFFFFFF  
		;sleep 50
		;sendinput {e 10}{r 2}
		
		;sendinput 3
		;mousemove,  1048 , 147 
		mouseclick, left, 1048 , 147 ,2 ;, Pcolor 0xB7A9A5 PixelRGB 0x878A96  
		;sleep 50
		;sendinput {e 10}{r 2}
		
		;sendinput 3
		mouseclick, left, 934 , 514 ,2
		;sleep 50
		;sendinput {e 10}{r 2}
		
		;sendinput 3
		mouseclick, left, 969 , 720 ,2
		;sleep 50
		;sendinput {e 10}{r 2}
		
		;sendinput 3
		mouseclick, left, 1048 , 147 ,2
		;sleep 50
		;sendinput {e 10}{r 2}
		
		;sendinput 3
		;mousemove, 1314 , 323 ;, Pcolor 0xFFFFFF PixelRGB 0xFFFFFF  
		mouseclick, left, 1314 , 323 ,1 ;, Pcolor 0xFFFFFF PixelRGB 0xFFFFFF  
		;sleep 50
		;sendinput {e 10}{r 2}

		;sendinput 3
		mouseclick, left,1418 , 253 ,1 ;, Pcolor 0x000000 PixelRGB 0x000000  
		;sleep 50
		;sendinput {e 10}{r 2}

		;sendinput 3
		mouseclick, left, 1597 , 144 ,1 ;, Pcolor 0x00D391 PixelRGB 0x91D300  
		;sleep 50
		;sendinput {e 10}{r 2}

		;sendinput 3
		mouseclick, left, 1442 , 316 ,1 ;, Pcolor 0x00422F PixelRGB 0x2F4200  
		;sleep 50
		;sendinput {e 10}{r 2}
	
		;sendinput 3
		mouseclick, left, 1205 , 376 , 1 ;, Pcolor 0x00C166 PixelRGB 0x66C100  
		mouseclick, left, 1379 , 400  ,1 ;, Pcolor 0x202D46 PixelRGB 0x462D20   ; loadout
		mouseclick, left, 1251 , 306  ,1  ;use own loadout
		
		;sleep 50
		;sendinput {e 10}{r 2}
		
		;sendinput 3
		mouseclick, left, 1109 , 621 , 1 ;, Pcolor 0x014631 PixelRGB 0x314601  
		;sleep 50
		;sendinput {e 10}{r 2}
	}

	mousemove, 1876 , 443 ; speed control button
	PixelGetColor, Pcolor, 1246 , 981 ;, Pcolor 0x00FFB4 PixelRGB 0xB4FF00  
	sleep 50
	mouseclick, left, 1111 , 618 ,1  ;, Pcolor 0x014631 PixelRGB 0x314601   ; 1.5x speed
	
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	if (pcolor =  "0x00FFB4" ) ; if (pcolor <> "0x00FFB4" )
	{
		loop, 10
		gosub  randclick ; 		settimer , randclick , 100
	}
 
	;settimer , randclick , off
	
	Elapsed := A_TickCount - StartTime
    Remaining := 1000 - Elapsed
    if (Remaining > 0)
        Sleep, Remaining

return

randclick:

	PixelGetColor, Pcolor, 267 , 525 ;, Pcolor 0x00FFB4 PixelRGB 0xB4FF00  
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
		if ( Pcolor = "0x00FFB4")
			return

	;remove speed control
	;mouseclick, left, 1206 , 373 ,1 ;, Pcolor 0x00D393 PixelRGB 0x93D300  
	sendinput {Click 1206 373 1}
	mouseclick, left, 1379 , 400  ,1 ;, Pcolor 0x202D46 PixelRGB 0x462D20   ; loadout
	mouseclick, left, 1251 , 306  ,1  ;use own loadout
 	sendinput {Click 1041 155 1} ;, Pcolor 0x00EDD7 PixelRGB 0xD7ED00  

	PixelGetColor, Pcolor, 1246 , 981 ;, Pcolor 0x00FFB4 PixelRGB 0xB4FF00  
	sleep 50
	clipboard = %Pcolor%
	tooltip , %a_linenumber% %clipboard%,0,0
	if (pcolor =  "0x00FFB4" ) ; if (pcolor <> "0x00FFB4" )
	{
		random , randnum , 1, 3
		;randnum := randnum * 3
		
		random , randX , 750 , 1300
		random , randY , 450 , 550

			randX = 1350
			loop, 20
			{
				sendinput {ctrl down}
				randX := randX - 50
				if (randX < 550)
					break

				PixelGetColor, Pcolor, 1246 , 981 ;, Pcolor 0x00FFB4 PixelRGB 0xB4FF00  
				sleep 50
				clipboard = %Pcolor%
				tooltip , %a_linenumber% %clipboard%,0,0
				if (pcolor <> "0x00FFB4" ) ; if (pcolor <> "0x00FFB4" )
					break
				
				sendinput {Click 1113  614 left 1} 
				sendinput {ctrl down}
				sendinput {Click  1070  768 left 1} ;return to lobby
				sendinput {Click 1041 , 161 left 1} ; skip
				sendinput {Click  1206 370 left 1}
				mouseclick, left, 1379 , 400  ,1 ;, Pcolor 0x202D46 PixelRGB 0x462D20   ; loadout
				mouseclick, left, 1251 , 306  ,1  ;use own loadout

				randY = 800
				loop, 15
				{
					random , randX , 750 , 1300
					random , randY , 450 , 550		
					
						sendinput %randnum%
						mouseclick, left, %randX% , %randY% , 2
						if randnum = 3
							sendinput ee ; sendinput {ctrl down}e{ctrl up}
						else
							sendinput ee ;sendinput {ctrl down}r{ctrl up}
						
						sendinput q
						mouseclick, left, %randX% , %randY% , 2
						if randnum = 3
							sendinput ee ; sendinput {ctrl down}e{ctrl up}
						else
							sendinput ee ;sendinput {ctrl down}r{ctrl up}
						
						;randX := randX + 15
						randY := randY - 20
						if (randY < 500)
							break
						
						;sleep 50
				}
			}
			sendinput {ctrl up}
	}

return

/*
wintitle Roblox 
 screen 2 , 0  , 0xF3F3F3 
 relative 2 , 0 , Pcolor 0xF3F3F3 PixelRGB 0xF3F3F3  
 client 2 , 0 , 0xF3F3F3 #
 VarWin: 0xb71050  VarControl:
*/

;0xF9F9F9
tooltip
	PixelGetColor, Pcolor, 2 , 2 ; Pcolor 0xF5F4F2
	clipboard = %Pcolor%
		if( pcolor = "0xF5F4F2")
			MouseClick, left , 2 , 2 ,  1
			
	PixelGetColor, Pcolor, 497 , 229 ;, Pcolor 0xF5F4F2
	clipboard = %Pcolor%
		if( pcolor = "0xF5F4F2")
			MouseClick, left , 497 , 229,  1		
tooltip, %a_linenumber% , 0,0

; mouseclick , left ,496 , 230 , 1 ; Pcolor 0xF5F4F2 PixelRGB 0xF2F4F5  

;mouseclick , left , 2 , 2 , 1 ; Pcolor 0xA05D25 PixelRGB 0xF2F4F5  
 
 /*
 wintitle Roblox 
 screen 10 , 19  , 0xE5E5E5 
 relative 10 , 19 , Pcolor 0xE5E5E5 PixelRGB 0xE5E5E5  
 client 10 , 19 , 0xE5E5E5 
 VarWin: 0x1ad11c6  VarControl: 0x3f41186
 */

;exitapp

;zoomoutoverhead(1)

/*
						loop, 3
						{	
							;overhead view zoom out
							sendinput {#}
							sendinput {esc}
							;PostLeftClick(800,50, "ahk_exe RobloxPlayerBeta.exe") ; MouseClick, left ,800,50 , , 1
							MouseClick, left,800,50, , 
							
							MouseClick, right, 800,50 , , D
							sendinput {blind}{rbutton down}
							sendinput {blind}{rbutton down }
							
							sleep 10
							MouseMove, 0, 20, 0 , R
							sleep 10
							
							MouseClick, right, 800,70 , , U
							sendinput {blind}{rbutton up}
							sendinput {blind}{rbutton up}


							sleep 10
							send, {blind}{Click, Right, 800, 50, Down}
							sleep 10
							send, {blind}{Click, Right, 800, 60, Up}
						}

sendinput {WheelDown 20}
*/
/*
sendinput {WheelDown down}
sleep 100
sendinput {Wheeldown up}
*/
				
;gosub end


		tooltip , %a_linenumber% %A_INDEX% TDX , 0, 0
		
		loop, 1
		{	;overhead view zoom out
			break
			MouseClick, right,800,50, , D
			MouseMove, 0, -1, 0 , R
			MouseMove, 0, 10, 0 , R
			MouseClick, right, , , , U
		}

sendinput {Wheeldown 10}

PixelGetColor, Pcolor, 929 , 73  ; , Pcolor 0x191919 PixelRGB 0x191919  
 if( pcolor = "0x191919")
	{
		pcolor = 0
		PixelGetColor, Pcolor, 926 , 98  ; , Pcolor 0x191919 PixelRGB 0x191919  
			if( pcolor = "0x191919")
				gosub overworld
	}


PixelGetColor, Pcolor, 25 , 70 ; Pcolor 0xFFFFFF
if( pcolor = "0xFFFFFF")
	{
		tooltip, %a_linenumber% %sleeptime% , 0,0
	 		PixelGetColor, Pcolor, 1140 , 613 ; Pcolor 0xFFFFFF
		if( pcolor = "0xFFFFFF")
			MouseClick, left , 1140 , 613 ,  1

			tooltip, %a_linenumber% %sleeptime% , 0,0
			mouseclick, left  , 25 , 70 , 1
			sleep 2000
			
			While clipboard
				clipboard := 
			
			mouseclick, left  , 1164 , 47 , 1
			mouseclick, left  , 848 , 47 , 1
			
			sleeptime := 100
			loop, 10
			{
				tooltip, %a_linenumber% , 0,0
				if (clipboard = "Tower defense X")
					break
			
				tooltip, %a_linenumber% %sleeptime% , 0,0
				While clipboard
					clipboard := 
					
				While !clipboard
				clipboard = Tower defense X
				
				mouseclick, left  , 848 , 47 , 1
				sleep %sleeptime%
				sendinput  {ctrl down}av{ctrl up}
				While clipboard
					clipboard := 
				sleep %sleeptime%
				
				sendinput  {ctrl down}ac{ctrl up}

				sleep %sleeptime%
			}

			tooltip, %a_linenumber% %sleeptime% , 0,0
			if not clipboard 
					gosub start
			
			sendinput {enter}
					tooltip, %a_linenumber% %sleeptime% , 0,0
					
					sleep 2000

		loop, 10
		{
		
			tooltip, %a_linenumber% %sleeptime% , 0,0
			;msgbox,,, wait 0x6FB000 ,1
			PixelGetColor, Pcolor, 149 , 700 ; Pcolor 0x6FB000
			sleep 500
			clipboard = %pcolor%
			if( pcolor = "0x6FB000")
			{
				mouseclick, left , 149 ,700,1
				break
			}
			
		}
	}
				tooltip, %a_linenumber% %sleeptime% , 0,0
;msgbox ,,, Tower defense X , 1

PixelGetColor, Pcolor, 149 , 700 ; Pcolor 0x6FB000
		;clipboard = %pcolor%
		if( pcolor = "0x6FB000")
			mouseclick, left , 149 ,700,1
			mouseclick, left , 149 , 701 , 10
				tooltip, %a_linenumber% %sleeptime% , 0,0

loop, 60
{
	PixelGetColor, Pcolor, 929 , 73  ; , Pcolor 0x191919 PixelRGB 0x191919  
	if( pcolor = "0x191919")
	{
		pcolor = 0
		PixelGetColor, Pcolor, 926 , 98  ; , Pcolor 0x191919 PixelRGB 0x191919  
			if( pcolor = "0x191919")
				gosub overworld
	}


	tooltip, %a_linenumber% , 0,0
	sleep 1000

	isingame = 0

	winactivate, ahk_exe RobloxPlayerBeta.exe
	
		PixelGetColor, Pcolor, 1140 , 613 ; Pcolor 0xFFFFFF
		if( pcolor = "0xFFFFFF")
			MouseClick, left , 1140 , 613 , , 1

		PixelGetColor, Pcolor, 53 , 60 
		clipboard = %clipboard%`n 53 , 60  Pcolor %Pcolor%					
		if( pcolor = "0xFFFFFF")
		{
			isingame = 1
			break
		}

		PixelGetColor, Pcolor, 30 , 59 
		if( pcolor = "0x191919")
		{
			isingame = 1
			break
		}

		PixelGetColor, Pcolor, 30 , 59 
		if( pcolor = "0x000000")
		{
			isingame = 1
			break
		}
		
		PixelGetColor, Pcolor, 1244 , 981 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00 
		if( pcolor = "0x00FFB4")
		{
			isingame = 1
			break
		}
		
		PixelGetColor, Pcolor, 267 , 521 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00 
		if( pcolor = "0x00FFB4")
		{
			isingame = 1
			break
		}

	tooltip, %a_linenumber% %sleeptime% , 0,0
}

tooltip, %a_linenumber% %sleeptime% , 0,0
if (isingame = 0)
	{
		msgbox,,, not in game -> gosub start
		gosub start
	}	
	
tooltip, %a_linenumber% %sleeptime% , 0,0

/*
PixelGetColor, Searchcolor1,  212 , 792 ; Pcolor 0x4D6E6C PixelRGB 0x6C6E4D 
PixelGetColor, Searchcolor2, 1662 , 792 ; Pcolor 0x50726F PixelRGB 0x6F7250  
clipboard = %Searchcolor1% %Searchcolor2%`n`n

sendinput {Wheeldown 25}
msgbox ,,, %clipboard%   wintitle %wintitle% mouse will move, 1 
sendinput {Wheeldown 25}

Searchcolor1 := "0x4C6E6C"
Searchcolor2 := "0x50716F"
*/

/*
0x4C6E6C 0x50716F
*/

;exitapp

xx := (Width / 2 )+ X
yy := (Height / 2 ) + Y
;mousemove,  %xx% , %yy% 


overworld:
;Run, taskkill /F /IM msedgewebview2.exe,, Hide
winmove, Active Window Info ,  , 1910, 	0
loop, 10
{
		tooltip, %a_linenumber% %sleeptime% , 0,0
		sleep %a_index%

		ismoving = 0

		PixelGetColor, Pcolor, 1070 , 768 ;return to lobby?
			if( pcolor = "0x000000")
				mouseclick, left , 1070 , 768 , 1
			
		PixelGetColor, Pcolor, 1150 , 767  ; , Pcolor 0x000000 PixelRGB 0x000000  ;return to lobby2?
			if( pcolor = "0x000000")
				mouseclick, left , 1150 , 767 ,  1
								
		PixelGetColor, Pcolor, 1140 , 613 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00 
			if( pcolor = "0xFFFFFF")
				MouseClick, left , 1140 , 613 ,  1

		PixelGetColor, Pcolor, 11 , 35 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00 
				clipboard := Pcolor

		PostLeftClick(800,50, "ahk_exe RobloxPlayerBeta.exe") ; MouseClick, left ,800,50  , 1
		sendinput {esc 2}
		sleep 100
		PostLeftClick(800,50, "ahk_exe RobloxPlayerBeta.exe") ; MouseClick, left ,800,50  , 1
		sendinput {# 2}
		sleep 100
		PostLeftClick(800,50, "ahk_exe RobloxPlayerBeta.exe") ; MouseClick, left ,800,50  , 1
		sleep 100
		sendinput {s 2}
		sleep 100
		sendinput {space 2}

		;PostMessage, 0x100, 0x53, 0, , A ;  0x53 is the virtual key code for 's'
		sleep 10
		;PostMessage, 0x100, 0x53, 0, , ahk_id %hwnd% ; 0x53 is the virtual key code for 's'
		sleep 10
		PostMessage, 0x100, 0x53, 0, , ahk_exe RobloxPlayerBeta.exe ; 0x53 is the virtual key code for 's'
		sleep 10
		;sendinput {down down}
		sleep 10
		;sendinput {down down}
		sleep 10
		;sendinput {s down}
		sleep 10
		;sendinput {s down}
		sleep 10
			
	PixelGetColor, Pcolor, 11 , 35 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00 
		if (clipboard <> Pcolor)
		{
			ismoving = 1
				break
		}
}

		PostLeftClick(800,50, "ahk_exe RobloxPlayerBeta.exe") ; 

		
		
	if (ismoving <> 1)
	{
		sendinput {lshift up}
		sleep 100
		sendinput {w up}
		sendinput {lshift up}{s up}{w up}
		sendinput {esc}
		sleep 1000
		sendinput {r}
		sleep 1000
		sendinput {enter}
		gosub start
	}
	
	tooltip, %a_linenumber% %sleeptime% , 0,0
	
sendinput {lshift up}{s up}{w up}{space up}


SetKeyDelay, 20 ,20
SetTitleMatchMode, 2

SetDefaultMouseSpeed , 0
SetMouseDelay, 20

SetMouseDelay, 20 , play

inLevel:
loop,
{
	tooltip, overworld , 0, 0
	ifwinactive,  ahk_exe RobloxPlayerBeta.exe
	{	
		PixelGetColor, Pcolor, 1069 , 124 ; , Pcolor 0x179F77 PixelRGB 0xC79225  
		if( pcolor = "0x179F77")
			mouseclick, left , 1042 , 145 ,1 
			
 		PixelGetColor, Pcolor, 1140 , 613 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00 
		if( pcolor = "0xFFFFFF")
			MouseClick, left , 1140 , 613 ,  1

		;PixelGetColor, Pcolor,  49 , 495 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00 
		PixelGetColor, Pcolor, 267 , 521 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00 
		clipboard := Pcolor
		;msgbox ,,, %a_linenumber% %Pcolor% , 1
		if( pcolor = "0x00FFB4")
		{
		;overworld
			;msgbox ,,, %a_linenumber% %Pcolor% , 1
		
		PixelGetColor, Pcolor,  1569 , 166 
			if( pcolor = "0x000000")
				mouseclick,  left , 1579 , 171 , 1
		  
		PixelGetColor, Pcolor,  1429 , 193
			if( pcolor = "0x000000")
				mouseclick,  left , 1429 , 193 , 1
		 
		PixelGetColor, Pcolor,  1266 , 177
			if( pcolor = "0x000000")
				mouseclick,  left , 1266 , 177 , 1
		 
		PixelGetColor, Pcolor,  1175 , 552 
			if( pcolor = "0x2626A8")
				mouseclick,  left , 1175 , 552 , 1

			loop , 1
			{
				tooltip, %a_linenumber% , 0,0			
				PixelGetColor, Pcolor,  267 , 521 
				if( pcolor <> "0x00FFB4")
				{
					;msgbox ,,, %a_linenumber% %Pcolor% , 1
					break  
				}
				;msgbox ,,, %a_linenumber% %Pcolor% , 1

				;sendinput {s 10}{space 10}
				
					WinGet, hwnd, ID, ahk_exe RobloxPlayerBeta.exe

					PostMessage, 0x101, 0x53, 0, , A ;  0x53 is the virtual key code for 's'
					sleep 10
					PostMessage, 0x101, 0x53, 0, , ahk_id %hwnd% ; 0x53 is the virtual key code for 's'
					sleep 10
					PostMessage, 0x101, 0x53, 0, , ahk_exe RobloxPlayerBeta.exe ;  0x53 is the virtual key code for 's'
					sleep 10
					sendinput {down up}
					sleep 10
					sendinput {down up}
					sleep 10
					sendinput {s up}
					sleep 10
					sendinput {s up}
					sleep 10
					PostMessage, 0x101, 0x20, 0, , ahk_exe RobloxPlayerBeta.exe ;  0x20 is the virtual key code for 'space'
					
					
					sleep 100
					
				loop, 10
				{
				tooltip, %a_linenumber% , 0,0
					MouseClick, left ,800,50 ,  1
					
					sendinput {s down}
					sleep 10
					sendinput {down down}
					sleep 10
					sendinput {down down}
					sleep 10
					sendinput {s down}
					sleep 10
					sendinput {space down}
					sleep 10
					PostMessage, 0x100, 0x20, 0, , ahk_exe RobloxPlayerBeta.exe ; 0x20 is the virtual key code for 'space'
					sleep 10
					PostMessage, 0x100, 0x20, 0, , A ;  0x20 is the virtual key code for 'space'randNum
					sleep 10
					PostMessage, 0x100, 0x53, 0, , A ; 0x53 is the virtual key code for 's'
					sleep 10
					PostMessage, 0x100, 0x53, 0, , ahk_id %hwnd% ; 
					sleep 10
					PostMessage, 0x100, 0x53, 0, , ahk_exe RobloxPlayerBeta.exe ; 
					sleep 10
					PostMessage, 0x100, 0x28, 0, , A ; 0x28 is the virtual key code for 'down arrow'
					sleep 10
					PostMessage, 0x100, 0x28, 0, , ahk_id %hwnd% ; 
					sleep 10
					PostMessage, 0x100, 0x28, 0, , ahk_exe RobloxPlayerBeta.exe ; 
					sleep 10
				}

				sendinput {lshift down}{space down}
				;sendinput {lshift down}
				sendinput {s down}
				sleep 10
				;sendinput {s up}{space up}
				sleep 10
				sendinput {s down}
				sendinput {s down}{space down}
				sleep 10
				sendinput {s down}
				;sendinput {s up}{space up}
				sleep 10
				sendinput {s down}
				sendinput {s down}{space down}
				
				;sendinput {s down}

				tooltip , %a_linenumber% %A_INDEX% TDX , 0, 0
				loop, 1
				{
				tooltip , %a_linenumber% %A_INDEX% TDX , 0, 0
					sendinput {s down}{space down}
					sleep 5000
										
					sendinput {s down}{a down}{space up}{space down}
					sleep 5000
					sendinput {a up}
					
					sendinput {s down}{d down}{space up}{space down}
					sleep 10000
					sendinput {d up}
					
					sendinput {s down}{a down}{space up}{space down}
					sleep 5000
					sendinput {a up}
				}
				
				;sendinput {lshift up}{s up}{w up}{space up}
			}

			loop , 1
			{	
				tooltip , %a_linenumber% %A_INDEX% TDX , 0, 0
				
				sendinput {esc}
				sleep 1000
				sendinput {r}
				sleep 1000
				sendinput {enter}
				
				sleep 1000 
				gosub start
				
				PixelGetColor, Pcolor,  267 , 521 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00
				if( pcolor <> "0x00FFB4")
				{
					;msgbox ,,, %a_linenumber% %Pcolor% , 1
					break
				}

				;sendinput {lshift up}{s up}{w up}

				sendinput {lshift down}{space down}
				sleep 100
				sendinput {w down}{space down}

				tooltip , %a_linenumber% %A_INDEX% TDX , 0, 0			

				sendinput {a down}{w down}{space down}
				sleep 5000
				sendinput {a up}
				
				sendinput {d down}{w down}{space down}
				sleep 10000
				sendinput {d up}
				
				sendinput {a down}{w down}{space down}
				sleep 5000
				sendinput {a up}
				
				sendinput {Wheeldown 10}

			PixelGetColor, Pcolor,  267 , 521 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00
			if( pcolor = "0x00FFB4")
				gosub overworld
				
			}
		}
		else
		{
				sendinput {esc}
				sleep 1000
				sendinput {r}
				sleep 1000
				sendinput {enter}
				
			;in level inlevel
			SetMouseDelay, 10
			SetMouseDelay, 10 , play
			;Run, taskkill /F /IM msedgewebview2.exe,, Hide
			winmove, Active Window Info ,  , 1910, 	0
	
			zoomoutoverhead(1)
			
			PostLeftClick(800,50, "ahk_exe RobloxPlayerBeta.exe") ; 
	
			PixelGetColor, Pcolor, 1073 , 767  ; , Pcolor 0x000000 PixelRGB 0x000000  ;return to lobby?
				if( pcolor = "0x000000")
					mouseclick, left , 1073 , 767 ,  1

			PixelGetColor, Pcolor, 1150 , 767  ; , Pcolor 0x000000 PixelRGB 0x000000  ;return to lobby2?
				if( pcolor = "0x000000")
					mouseclick, left , 1150 , 767 ,  1

			PixelGetColor, Pcolor, 1140 , 613 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00 
				if( pcolor = "0xFFFFFF")
					MouseClick, left , 1140 , 613 , , 1

			tooltip , %a_linenumber% %A_INDEX% TDX , 0, 0			
			PostLeftClick(800,50, "ahk_exe RobloxPlayerBeta.exe") ; 
			sendinput {lshift up}{s up}{w up}{space up}
			PostLeftClick(800,50, "ahk_exe RobloxPlayerBeta.exe") ; 
			tooltip , %a_linenumber% %A_INDEX% TDX , 0, 0			
					
			PixelGetColor, Pcolor, 1070 , 768 ;return to lobby?
				if( pcolor = "0x000000")
					mouseclick, left , 1070 , 768 , 1
			
			PixelGetColor, Pcolor, 1150 , 767  ; , Pcolor 0x000000 PixelRGB 0x000000  ;return to lobby2?
				if( pcolor = "0x000000")
					mouseclick, left , 1150 , 767 ,  1
				
			;if 0% speedboost displayed, close speedboost window
			/*PixelGetColor, Pcolor,  971 , 551
			if( pcolor = "0xAEFFDC")
				mouseclick, left , 1153 , 446 , 1
				
				mouseclick, left ,  1510 , 294 , 1
				sendinput {Wheeldown 20}
*/
					PixelGetColor,  Pcolor , 1018 , 74 
						if( pcolor <> "0x191919")
						gosub overworld
			
 			startx := 700
			endx := 1250	
			starty := 550
			endy := 750
 
  			startx := 100l
			endx := 1700
			starty := 500
			endy := 800

			startx := 500
			endx := 1500
			starty := 600
			endy := 750
		
 			startx := 700
			endx := 1250	
			starty := 550
			endy := 750
 
			startx := 650
			endx := 1150	
			starty := 550
			endy := 625
			
			mousey := starty

							;click speedboost
							mouseclick, left , 1885 , 450 , 1
							sendinput q
							;activate speedboost
							PixelGetColor, Pcolor, 953 , 607 
							clipboard = %clipboard%`n 953 , 607  Pcolor %Pcolor%
							;msgbox ,,, 	%clipboard% , 1
							if(pcolor = "0x000000")
								mouseclick, left , 953 , 607  , 1
							
								sendinput q
								mouseclick, left ,1137 , 442 , 1
								
								mouseclick, left , 1070 , 768 , 1

				PixelGetColor, Pcolor,1241 , 978  ;, Pcolor 0x02E28A PixelRGB 0x8AE202 
					if( pcolor = "0x02E28A")
						mouseclick, left , 1241 , 978 , 1
 				
				/*
				PixelGetColor, Pcolor, 1006 , 468  ; , Pcolor 0xFFFFFF ; Nightmare
					if( pcolor = "0xFFFFFF")
					{
						MouseClick, left , 1006 , 468 , , 3
						MouseClick, left , 1037 , 728 , 3
					}
				*/
					
				PixelGetColor, Pcolor, 816 , 468  ; , Pcolor 0xFFFFFF ; normal
					if( pcolor = "0xFFFFFF")
					{
						MouseClick, left , 816 , 468 , , 3
						MouseClick, left , 1037 , 728 , 3
					}
					
					PixelGetColor, Pcolor,  1330 , 307 ; , Pcolor 0x00FFB4 PixelRGB 0xB4FF00  
					if( pcolor = "0x00FFB4")
					{
						mouseclick, left , 1330 , 307 , 1 
						gosub inlevel
					}
 
 PixelGetColor, Pcolor,  1330 , 307 ; , Pcolor 0x00FFB4 PixelRGB 0xB4FF00  
					if( pcolor = "0x00FFB4")
					{
						mouseclick, left , 1330 , 307 , 1 
						gosub inlevel
					}

 PixelGetColor, Pcolor, 1481 , 306 ;, Pcolor 0x00FFB4  
					if( pcolor = "0x00FFB4")
					{
						mouseclick, left , 1481 , 306 ;, 1 0x00FFB4 
						gosub inlevel
					}
			
			sendinput {# 2}
			PostLeftClick(800,50, "ahk_exe RobloxPlayerBeta.exe") ; MouseClick, left ,800,50 , , 1

			if( pcolor <> "0xFFFFFF")
			{
					loop, 
					{
						;column
						PixelGetColor, Pcolor, 267 , 521 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00 
						if( pcolor = "0x00FFB4")
							gosub overworld
	
						zoomoutoverhead(1)
		
						/*
						;click speedboost
						mouseclick, left , 1885 , 450 , 1
						
						;activate speedboost
						PixelGetColor, Pcolor, 953 , 607 
						;clipboard = %clipboard%`n 953 , 607  Pcolor %Pcolor%
						;msgbox ,,, 	%clipboard% , 1
							if(pcolor = "0x000000")
								mouseclick, left , 953 , 607  , 1
							else
							{
								mouseclick, left ,1137 , 442 , 1
								
							}
						*/
						
						
	
 
						;msgbox ,,, %clipboard%
						mouseclick,  left , 1042 , 145 , 1
						mouseclick,  left , 1135 , 445 , 1 ; Pcolor 0xFFFFFF PixelRGB 0x000000  
	 /*
	 
 
						;dismiss speedboost X
						PixelGetColor, Pcolor, 1137 , 442 ,  ; Pcolor 0x242424 PixelRGB 0x242424  
							if( pcolor = "0x000000")
									mouseclick, left ,1137 , 442 , 1
	 */
						PixelGetColor, Pcolor, 1136 , 373  ; , Pcolor 0x000000
							if( pcolor = "0x000000")
									mouseclick, left ,1136 , 373 , 1

/*
wintitle Roblox 
 screen 136 , -972  , 0x179F77 
 relative 1069 , 124 , Pcolor 0x179F77 PixelRGB 0xC79225  
 client 1061 , 93 , 0x179F77 
 VarWin: 0x131870  VarControl:
 
 PixelGetColor, Pcolor, 1069 , 124 ; , Pcolor 0x179F77 PixelRGB 0xC79225  
							if( pcolor = "0x179F77")
									mouseclick, left , 1042 , 145 ,1 
*/ 
					
						sendinput q
						
						mouseclick, left ,1025 , 124 ,1 
						mouseclick, left , 1153 , 446 , 1	
						mouseclick, left , 1153 , 446 , 1 ; 0x3D3B39 
 
						PostMessage, 0x100, 0x51, 0, , ahk_exe RobloxPlayerBeta.exe ; virtual key code for 'q' 
						PostMessage, 0x101, 0x51, 0, , ahk_exe RobloxPlayerBeta.exe ;  virtual key code for 'q' 
						
						mouseclick, left , 1153 , 446 , 1
						mouseclick , left ,1505 , 309 , 1
						mouseclick, left , 1153 , 446 , 1 ; 0x3D3B39 
						
							PixelGetColor, Pcolor, 1070 , 768 ;return to lobby?
								if( pcolor = "0x000000")
									mouseclick, left , 1070 , 768 , 1
							
							PixelGetColor, Pcolor, 1150 , 767  ; , Pcolor 0x000000 PixelRGB 0x000000  ;return to lobby2?
								if( pcolor = "0x000000")
									mouseclick, left , 1150 , 767 ,  1
						mousex  := endx
						;sendinput {Wheeldown 25}
						;PostRightClick(800,50, "ahk_exe RobloxPlayerBeta.exe") ; 
						;PostMessage, 0x200, 0, ((51) << 16) | (700), , A: Sends a WM_MOUSEMOVE
						
								thisnum := thisnum - 1
								
							/*
							if (thisnum <3)
								thisnum := 5
									
							sendinput , %thisnum% ;= 5
							*/
							PostMessage, 0x100, 0x51, 0, , ahk_exe RobloxPlayerBeta.exe ;  virtual key code for 'q' 
							PostMessage, 0x101, 0x51, 0, , ahk_exe RobloxPlayerBeta.exe ;  virtual key code for 'q' 	
							
		PostLeftClick(800,50, "ahk_exe RobloxPlayerBeta.exe") ; 

		;MouseClick, right,800,50, , D

		tooltip , %a_linenumber% %A_INDEX% TDX , 0, 0
		
		;MouseClick, right, , , , U
		;Send, {RButton up}

		;Send, {RButton}
		
		zoomoutoverhead(1)
		PixelGetColor, Pcolor, 810 , 639 
			if( pcolor = "0x3D3B39")
				mouseclick, left ,  810 , 639  ; , Pcolor 0x3D3B39 PixelRGB 0x393B3D  

 		PixelGetColor, Pcolor, 1163 , 444 ; , Pcolor 0x000000
			if( pcolor = "0x000000")
				mouseclick, left ,  1163 , 444 ;, Pcolor 0x000000
				
		tooltip
			PixelGetColor, Pcolor, 2 , 2 ; Pcolor 0xF5F4F2
			clipboard = %Pcolor%
				if( pcolor = "0xF5F4F2")
					MouseClick, left , 2 , 2 ,  1
					
			PixelGetColor, Pcolor, 497 , 229 ;, Pcolor 0xF5F4F2
			clipboard = %Pcolor%
				if( pcolor = "0xF5F4F2")
					MouseClick, left , 497 , 229,  1	
			
			tooltip, %a_linenumber% %A_INDEX% TDX, 0,0

			pixelGetColor, Pcolor, 826 , 640 ;, Pcolor 0x3D3B39
			clipboard = %Pcolor%
				if( pcolor = "0x3D3B39")
					MouseClick, left , 826 , 640 , 1 
				tooltip , %a_linenumber% %A_INDEX% TDX , 0, 0
						
							loop, 3
							{
								
								mousex := endx
								loop ;row 1st upgrades
								{
									sendinput e
									mouseclick , left , %mousex% , %mousey% , 1
									sendinput e
					
									mousex := mousex - 30
									
									if (mousex < startx )
									break
								}
							}
							
							mousex := endx
							zoomoutoverhead(1)
							loop, ;row 2nd place
							{
								;sendinput , %thisnum% 
								Random, randNum, 1 , 3
								sendinput , %randNum%
								mouseclick , left , %mousex% , %mousey% , 1
								;PostLeftClick(%mousex% , %mousey%, "ahk_exe RobloxPlayerBeta.exe")
								;sendinput q
								;PostMessage, 0x100, 0x51, 0, , ahk_exe RobloxPlayerBeta.exe ;  virtual key code for 'q' 
								;PostMessage, 0x101, 0x51, 0, , ahk_exe RobloxPlayerBeta.exe ;  virtual key code for 'q' 
								;mousex := mousex - 5
								;mouseclick , left , %mousex% , %mousey% , 1
								;sendinput e
								;PostMessage, 0x100, 0x45, 0, , ahk_exe RobloxPlayerBeta.exe ; virtual key code for 'e'
								;PostMessage, 0x101, 0x45, 0, , ahk_exe RobloxPlayerBeta.exe ; virtual key code for 'e'

								;PostMessage, 0x100, 0x45, 0, , ahk_exe RobloxPlayerBeta.exe ;  virtual key code for 'q' 
								;PostMessage, 0x101, 0x45, 0, , ahk_exe RobloxPlayerBeta.exe ;  virtual key code for 'q' 

								;sendinput r
								;PostMessage, 0x100, 0x52, 0, , ahk_exe RobloxPlayerBeta.exe ; virtual key code for 'q' 
								;PostMessage, 0x101, 0x52, 0, , ahk_exe RobloxPlayerBeta.exe ;  virtual key code for 'q' 								

								;mouseclick, left, 321 , 667 , 1
								mousex := mousex - 30
								
								if (mousex < startx )
								break
							}
							
							sendinput e
							sendinput q
							;mouseclick , left , %startx% , %mousey% , 1	
							mousey := mousey + 30

							PixelGetColor, Pcolor, 1045 , 735 ,  ; Pcolor 0x242424 PixelRGB 0x242424  
								if( pcolor = "0xA6EDAE")
									mouseclick, left , 1045 , 735   , 1
						
							mouseclick, left , 1511 , 295 , 1 ; Pcolor 0x0D513D PixelRGB 0x3D510D  
		 
							mouseclick, left , 1048 , 114  ,1 
							;mouseclick, left ,  970 , 609 , 1 ;  Pcolor 0x000000
							
							mouseclick, left , 1135 , 444 , 1 ; Pcolor 0x000000 PixelRGB 0x000000  
		 
							mouseclick,  left , 1042 , 145 , 1
						
							PixelGetColor, Pcolor, 883 , 733 ,
								if( pcolor = "0x51DC63")
								mouseclick, left , 883 , 733 , 1

							PixelGetColor, Pcolor, 965 , 731 ,  ; Pcolor 0x242424 PixelRGB 0x242424  
								if( pcolor = "0x242424")
								mouseclick, left , 965 , 731  , 1

							mouseclick, left , 1150 , 462 , 1 ;1 Pcolor 0xFFFFFF PixelRGB 0x000000  
		 
								if (mousey > endy )
									break
					}

					;sendinput {left up}
					;mouseclick, left, 1886 , 441 , 1

					;click speedboost
					mouseclick, left , 1885 , 450 , 1
										
					;activate speedboost
					PixelGetColor, Pcolor, 953 , 607 ; Pcolor 0x00CB18 PixelRGB 0x18CB00  
					clipboard = %clipboard%`n 953 , 607  Pcolor %Pcolor%
					;msgbox ,,, 	%clipboard% , 1
						if( pcolor = "0x000000")
							mouseclick, left , 953 , 607  , 1
	
					mouseclick, left, 1153 , 368 , 1
					

			}
		}

		PixelGetColor, Pcolor, 1140 , 613 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00 
		if( pcolor = "0xFFFFFF")
			MouseClick, left , 1140 , 613 , , 1

				sendinput {lshift up}
				sleep 100
				sendinput {w up}
				
				sendinput {lshift up}{s up}{w up}

				sendinput {esc}
				sleep 1000
				sendinput {r}
				sleep 1000
				sendinput {enter}

	}

}

gosub start
gosub start

end:
+esc::
!esc::
^esc::
#esc::
+#esc::
!#esc::
^end::
!end::

					sendinput {crtl up}{lshift up}{w up}{a up}{s up}{d up}{space up}
					
msgbox, , , end , 1

sendinput {#}
							sendinput {esc}
							PostLeftClick(800,50, "ahk_exe RobloxPlayerBeta.exe") ; MouseClick, left ,800,50 , , 1
							MouseClick, left,800,50, , 
							
							MouseClick, right,800,50, , D
							
							;PostMessage, 0x204, 0, %lParam%, , %winTitle% ; WM_RBUTTONDOWN
							;PostMessage, 0x205, 0, %lParam%, , %winTitle% ; WM_RBUTTONUP
	
							sleep 1
							;MouseMove, 0, -1, 0 , R
							sleep 1
							MouseMove, 0, -20, 0 , R
							sleep 1
							MouseClick, right, , , , U
							sleep 1
							send, {blind}{Click, Right, 800, 50, Down}
							sleep 1
							send, {blind}{Click, Right, 800, 40, Up}
							sleep 1
							
							;MouseClickDrag, Button, X1, Y1, X2, Y2 [, Speed, R]
							loop, 2
							{
								mouseclickdrag , right , 800 , 50 , 800 , 40, %a_index%
								sleep 100
				
							}
							
							while GetKeyState("RButton", "P")
								sleep 100
								

SoundBeep , 600, 50
Winx := A_SCREENWIDTH - 350
	Winheight := A_SCREENheight - 100
	winmove, ahk_exe AU3_Spy.exe, , %winx%  , 0 , 350 , %Winheight%

sendinput {lshift up}{s up}{w up}{down up}
sendinput {lshift up}{s up}{w up}{down up}
			thecommand = "write-host 'restarting %a_scriptname%' `;$Process = Get-Process autohotkeyU64 -ErrorAction SilentlyContinue `;$Process = Get-Process autohotkey -ErrorAction SilentlyContinue `; if x($Process) { `;   if (!$Process.HasExited) { `;     $Process | Stop-Process -Force `;      Sleep 1 `;   } `; } `; Remove-Variable Process `;" `; gosub start
			;run , powershell.exe %thecommand%
			Run,  powershell.exe -windowstyle Minimized %thecommand%  , , Min, PID


winactivate  , tdx_grind

exitapp



zoomoutoverhead(n){

						loop, %n%
						{	
							;overhead view zoom out
							sendinput {#}
							sendinput {esc}
							;PostLeftClick(800,50, "ahk_exe RobloxPlayerBeta.exe") ; MouseClick, left ,800,50 , , 1
							MouseClick, left,800,50, , 
							
							MouseClick, right, 800,50 , , D
							sendinput {blind}{rbutton down}
							sendinput {blind}{rbutton down }
							
							sleep 10
							MouseMove, 0, 20, 0 , R
							sleep 10
							
							MouseClick, right, 800,70 , , U
							sendinput {blind}{rbutton up}
							sendinput {blind}{rbutton up}


							sleep 10
							send, {blind}{Click, Right, 800, 50, Down}
							sleep 10
							send, {blind}{Click, Right, 800, 60, Up}
						}
						
						n := n* 10
						sendinput {WheelDown %n%}						
						
}

PostLeftClick(x, y, winTitle) {

    lParam := x & 0xFFFF | (y & 0xFFFF) << 16
    PostMessage, 0x201, 0, %lParam%, , %winTitle% ; WM_LBUTTONDOWN
    PostMessage, 0x202, 0, %lParam%, , %winTitle% ; WM_LBUTTONUP
	sleep 10
}

PostRightClick(x, y, winTitle) {

    lParam := x & 0xFFFF | (y & 0xFFFF) << 16
    PostMessage, 0x204, 0, %lParam%, , %winTitle% ; WM_RBUTTONDOWN
    PostMessage, 0x205, 0, %lParam%, , %winTitle% ; WM_RBUTTONUP
	sleep 10
}