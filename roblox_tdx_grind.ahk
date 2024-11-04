#singleinstance force
#InstallKeybdHook
#InstallMouseHook

SetKeyDelay, 20 ,20
SetTitleMatchMode, 2

SetDefaultMouseSpeed , 0
SetMouseDelay, 20

SetMouseDelay, 20 , play

coordmode, mouse, relative
coordmode, pixel, relative
coordmode, tooltip, relative

WinGetTitle, wintitle , A

winactivate, ahk_exe RobloxPlayerBeta.exe
winwaitactive, ahk_exe RobloxPlayerBeta.exe

WinGetPos, X, Y, Width, Height, ahk_exe RobloxPlayerBeta.exe
xx := (Width / 2 )+ X
yy := (Height / 2 ) + Y

startx := 700
endx := 1200
starty := 500
endy := 800

start:

loop,
{
send {lshift up}{s up}{w up}
	
ifwinactive,  ahk_exe RobloxPlayerBeta.exe
{	

	PixelGetColor, Pcolor,  49 , 495 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00 
	clipboard := Pcolor
	msgbox ,,, %Pcolor% , 1
	if( pcolor = "0x00FFB4")
	{
	  
		loop , 6
		{	
			PixelGetColor, Pcolor,  49 , 495 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00
			if( pcolor <> "0x00FFB4")
				break 
				
			tooltip , TDX ,
			send {lshift up}{s up}{w up}

			send {lshift down}
			;sendinput {lshift down}
			sleep 100
			send {s down}
			;sendinput {s down}
		
			tooltip , %a_linenumber% %A_INDEX% TDX ,
			sleep 3000
			
			;mouseclick, left, 887 , 571 , 1
			mouseclick, left, 1067 , 504 , 1
			mouseclick, left,1055 , 719 , 1
			;mouseclick, left,1072 , 754 , 1
			mouseclick, left,1193 , 779 , 1
			mouseclick, left,1036 , 172 , 1
			mouseclick, left,1191 , 752 , 1
			mouseclick, left, 1317 , 322 , 1
			
			Random, randNum, 1, 1
			;send %randNum%
			mouseclick, left, 1138 , 625 , 1
			;send %randNum%
			mouseclick, left, 1614 , 797 , 1
			;send %randNum%
			mouseclick, left,1615 , 629 , 1
			;send %randNum%
			mouseclick, left,1592 , 484 , 1
			;send %randNum%
			mouseclick, left,400 , 707 , 1
			;send %randNum%
			mouseclick, left,398 , 442 , 1
			;send %randNum%
			mouseclick, left,398 , 442 , 1
			;send %randNum%
			mouseclick, left,404 , 309 , 1
		
			send {lshift up}{s up}{w up}
		}

		loop , 4
		{	
			PixelGetColor, Pcolor,  49 , 495 ; Pcolor 0x00FFB4 PixelRGB 0xB4FF00
			if( pcolor <> "0x00FFB4")
				break 
				
			send {lshift up}{s up}{w up}
			
			send {lshift down}
			sleep 100
			send {w down}

			tooltip , %a_linenumber% %A_INDEX% TDX ,			
			
			sleep 2000
			
			;mouseclick, left, 887 , 571 , 1
			mouseclick, left, 1067 , 504 , 1
			mouseclick, left,1055 , 719 , 1
			;mouseclick, left,1072 , 754 , 1
			mouseclick, left,1193 , 779 , 1
			mouseclick, left,1036 , 172 , 1
			mouseclick, left, 1219 , 1011 , 1

			Random, randNum, 1, 1
			;send %randNum%
			mouseclick, left, 1138 , 625 , 1
			;send %randNum%
			mouseclick, left, 1614 , 797 , 1
			;send %randNum%
			mouseclick, left,1615 , 629 , 1
			;send %randNum%
			mouseclick, left,1592 , 484 , 1
			;send %randNum%
			mouseclick, left,400 , 707 , 1
			;send %randNum%
			mouseclick, left,398 , 442 , 1
			;send %randNum%
			mouseclick, left,398 , 442 , 1
			;send %randNum%
			mouseclick, left,404 , 309 , 1
		
		}
	}
	else
	{
		send {lshift up}{s up}{w up}
		
		tooltip , %a_linenumber% %A_INDEX% TDX ,			

			/*
			Random, randNum, 1, 3
			send %randNum%
			mouseclick, left, 1138 , 625 , 1
			send %randNum%
			mouseclick, left, 1614 , 797 , 1
			send %randNum%
			mouseclick, left,1615 , 629 , 1
			send %randNum%
			mouseclick, left,1592 , 484 , 1
			send %randNum%
			mouseclick, left,400 , 707 , 1
			send %randNum%
			mouseclick, left,398 , 442 , 1
			send %randNum%
			mouseclick, left,398 , 442 , 1
			send %randNum%
			mouseclick, left,404 , 309 , 1
			*/
		
		mouseclick, left, 1880 , 445 , 1
		mouseclick, left, 1153 , 368 , 1
		Random, randNum, 1, 1
		;send %randNum%	
 
	startx := 700
	endx := 1200
	starty := 500
	endy := 800
	mousey := starty


	send {left down}
	loop, 
	{
		mousex  := startx
		loop,
		{
			
			ifwinactive,  ahk_exe RobloxPlayerBeta.exe
			{
				send %randNum%	
				mouseclick , left , %mousex% , %mousey% , 1
				tooltip , %mousex%  %mousey% 
				mouseclick, left, 321 , 667 , 1
			}
			else
			{
				winactivate, ahk_exe RobloxPlayerBeta.exe
			}
			
			;msgbox  , , ,%mousex% -  %mousey% ,1
			mousex := mousex + 50
			
			if (mousex > endx )
				break
		}
			
			mousey := mousey + 50

			if (mousey > endy )
				break
	}

send {left up}
	mouseclick, left, 1886 , 441 , 1
	send q
	mouseclick, left, 1153 , 368 , 1
 
		
;		mouseclick, left, 1886 , 441 , 1
 
		/*
		mouseclick, left, 700,  500 ,1 
		mouseclick, left, 321 , 667 ,5 ; Pcolor 0x00D298 PixelRGB 0x98D200  
		mouseclick, left, 950,  500 ,1 
		mouseclick, left, 321 , 667 , 5 ; Pcolor 0x00D298 PixelRGB 0x98D200  
		mouseclick, left, 1200, 500,1
		mouseclick, left, 321 , 667 , 5 ; Pcolor 0x00D298 PixelRGB 0x98D200  
		
		mouseclick, left, 700 ,650,1
		mouseclick, left, 321 , 667 , 5 ; Pcolor 0x00D298 PixelRGB 0x98D200  
		mouseclick, left, 950 ,650,1
		mouseclick, left, 321 , 667 , 5 ; Pcolor 0x00D298 PixelRGB 0x98D200  
		mouseclick, left, 1200 ,650,1
		mouseclick, left, 321 , 667 , 5 ; Pcolor 0x00D298 PixelRGB 0x98D200  

		mouseclick, left, 700 ,800,1
		mouseclick, left, 321 , 667 , 5 ; Pcolor 0x00D298 PixelRGB 0x98D200  
		mouseclick, left, 950 ,800,1
		mouseclick, left, 321 , 667 , 5 ; Pcolor 0x00D298 PixelRGB 0x98D200  
		mouseclick, left, 1200 ,800,1
		mouseclick, left, 321 , 667 ,51 ; Pcolor 0x00D298 PixelRGB 0x98D200  
		
		*/

	}

			send {lshift up}
			sleep 100
			send {w up}
			
			send {lshift up}{s up}{w up}

			send {esc}
			sleep 1000
			send {r}
			sleep 1000
			send {enter}




	}
	tooltip 


}


exitapp

+esc::
!esc::
^esc::
#esc::
+#esc::
!#esc::
send {lshift up}{s up}{w up}
exitapp
