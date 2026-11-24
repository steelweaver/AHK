settitlematchmode, 2
#singleinstance force
#UseHook
#InstallKeybdHook
#InstallMouseHook
; SetBatchLines, -1

SetBatchLines, 20
Loop, 254 {
        vk := Format("vk{:02X}", A_Index)
        ; Check logical state (without "P") so we catch keys held down by a script
        if GetKeyState(vk) {
            SendInput, {%vk% Up}
        }
	}
	
clipboard = 
windowNames =
randA := 5
randB := 6
randC := 1
randDmin := 1
randDmax := 6

;winminimizeall


; Adjust path if needed
sleep 1000

start()
fileappend , a_linenumber %a_linenumber%`n , %a_scriptdir%\checkcolor.log
reload

exitapp

start(){


	;msgbox ,,, start,1
	tooltip, %a_linenumber% , 0,0

	IfwinnotExist, ahk_exe RobloxPlayerBeta.exe
	{
		;run , C:\Users\0001\AppData\Local\Roblox\Versions\version-5a21b87bbc2641cf\RobloxPlayerBeta.exe
		;run , C:\Users\0001\AppData\Local\Roblox\Versions\version-4ea8e85481e34f46\RobloxPlayerBeta.exe
		run , roblox-player:1+launchmode:app
		
		msgbox ,,, %A_ThisFunc% %a_linenumber% %clipboard%,1
		winwait , ahk_exe RobloxPlayerBeta.exe, , 60
		IfwinnotExist, ahk_exe RobloxPlayerBeta.exe
		{
			Loop, Files, %A_AppData%\..\Local\Roblox\Versions\RobloxPlayerBeta.exe, R
			{
				RobloxPath := A_LoopFileFullPath
				break
			}

			if (RobloxPath != "")
				run , roblox-player:1+launchmode:app ; Run, "%RobloxPath%"
			else
			{
				MsgBox,,, RobloxPlayerBeta.exe was not found ,10 
				run , roblox-player:1+launchmode:app
			}
		}
		msgbox ,,, %A_ThisFunc% %a_linenumber% %clipboard%,1
		winwait , ahk_exe RobloxPlayerBeta.exe, , 60

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
		fileappend , a_linenumber %a_linenumber%`n , %a_scriptdir%\checkcolor.log
		reload
	}

	sendinput, {blind}{lshift up}{s up}{w up}{space up}

	SetKeyDelay, 50 ,50
	SetTitleMatchMode, 2

	SetMouseDelay, 50
	SetMouseDelay, 50 , play

	SetTitleMatchMode, 2
	SetTitleMatchMode, 2
	SetDefaultMouseSpeed , 0
	fileappend , a_linenumber %a_linenumber%`n , %a_scriptdir%\checkcolor.log

	coordmode, mouse, relative
	coordmode, pixel, relative
	coordmode, tooltip, relative
fileappend , a_linenumber %a_linenumber%`n , %a_scriptdir%\checkcolor.log

	winmove, ahk_class AU3Reveal, , %Width%  , %Height% , , 

	winmove,Active Window Info, , %Width% , %Height% , , 

	winminimize, ahk_exe RobloxPlayerBeta.exe
	winrestore, ahk_exe RobloxPlayerBeta.exe
	winmaximize, ahk_exe RobloxPlayerBeta.exe

	winactivate, ahk_exe RobloxPlayerBeta.exe
	winwaitactive, ahk_exe RobloxPlayerBeta.exe
	
	;Width 1936 Height 1056
	; 1. Restore the window first if it is currently maximized or minimized
    WinRestore, ahk_exe RobloxPlayerBeta.exe ; ahk_id %activeID%

    ; 2. Apply standard WS_OVERLAPPEDWINDOW style (Caption, ThickFrame/Borders, Min/Max buttons)
    WinSet, Style, +0x00CF0000, ahk_exe RobloxPlayerBeta.exe ; 

    ; 3. Position at top-left (or -8, 0 to align the 1920x1080 inner area flush with screen) and resize
    WinMove, aahk_exe RobloxPlayerBeta.exe,, -8, 0, 1936, 1056
	
	WinGetTitle, wintitle , A
	WinGetPos, X, Y, Width, Height, ahk_exe RobloxPlayerBeta.exe
	fileappend , ahk_exe RobloxPlayerBeta.exe Width %Width% Height %Height%`n , %a_scriptdir%\checkcolor.log

	WinGet, ismax, minmax, %wintitle% ahk_exe RobloxPlayerBeta.exe

	
	ifwinactive , ahk_exe RobloxPlayerBeta.exe
		inroblox()
	
	/*
	if (ismax <> 1) 
		reload
	*/
	
	fileappend , a_linenumber %a_linenumber%`n , %a_scriptdir%\checkcolor.log

	ifwinnotactive , ahk_exe RobloxPlayerBeta.exe
	{
		fileappend , a_linenumber %a_linenumber%`n , %a_scriptdir%\checkcolor.log
		reload
	}
}

inroblox(){
	tooltip, %A_ThisFunc% , 0 , 0

	winactivate, ahk_exe RobloxPlayerBeta.exe
	winwaitactive, ahk_exe RobloxPlayerBeta.exe


/*

checkRGB := 0x27120E
PixelSearch , pixelX , pixelY , 964 , 696 , 964  , 696 , %checkRGB% , 1 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
if Errorlevel = 0 ; pixel is found
{
			mouseclick , left , %pixelX% , %pixelY%
			msgbox ,,, Home button %A_ThisFunc% %a_linenumber% checkx %checkx%  checky %checky%  checkRGB -%checkRGB%- %clipboard%  ,1 
}
*/

/*
if ( checkpixel( checkx := 964 , checky := 696 , checkRGB := 0x27120E )) ; 
{
	MuseReliableClick(checkx, checky)
} 
*/
 ; exitapp
 
 
/*
Pcolor = 0xF4F5F8
mousemove , 48 , 113
sleep 500
PixelSearch , pixelX , pixelY , 47 , 49 , 112  , 114 , %Pcolor% , 1 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
if Errorlevel = 0 ; pixel is found
{
			mouseclick , left , %pixelX% , %pixelY%
			msgbox ,,, Home button %A_ThisFunc% %a_linenumber% checkx %checkx%  checky %checky%  checkRGB -%checkRGB%- %clipboard% 
}
*/	

/*if ( checkpixel( checkx := 1153 , checky := 869 , checkRGB := 0x2D3F7B )) ; roblox menu open
{
	send {esc}
} 
 */
 /*
if ( checkpixel( checkx := 1151 , checky := 876 , checkRGB := 0x233371 )) ; 
{
	send {esc}
} 
*/




if ( checkpixel( checkx := 1806 , checky := 507 , checkRGB := 0x0C0D0B )) ; in nightmare battle
{
	MuseReliableClick(checkx, checky)
	yesinbattle()
} 
if ( checkpixel( checkx := 1824 , checky := 606 , checkRGB := 0x153400 )) ; in battle
{
	MuseReliableClick(checkx, checky)
	yesinbattle()
} 

if ( checkpixel( checkx := 231 , checky := 448 , checkRGB := 0x5A7F00 )) ; grayed inventory backpack
{

if ( checkpixel( checkx := 807 , checky := 433 , checkRGB := 0xFFD200 )) ; banned tower banner
{
	if ( checkpixel( checkx := 1100 , checky := 433 , checkRGB := 0xFFD200 )) ; banned tower banner
	{
		MuseReliableClick(889 , 595) ; banned tower
	} 
} 
	send {esc}
} 

if ( checkpixel( checkx := 1879 , checky := 449 , checkRGB := 0x243300 )) ; deep grayed speed control
{
	send {esc}
} 


if ( checkpixel( checkx := 1887 , checky := 475 , checkRGB := 0x2A160D )) ; grayed speed control
{
	send {esc}
} 
 
 
if ( checkpixel( checkx := 755 , checky := 941 , checkRGB := 0xA82626 )) ; red VIP
{
mousemove,  862 , 885 ;  ready 
	loop, 10
	{
		send {w down}{e down}
		
		if ( checkpixel( checkx := 863 , checky := 875 , checkRGB := 0x627D1B )) ; 
		{
			MuseReliableClick(checkx, checky)
		}

	PixelSearch , pixelX , pixelY , 860 ,  870  ,  870 , 880 , 0x627D1B , 1 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
		if Errorlevel = 0 ; pixel is found
		{
			MuseReliableClick( pixelX , pixelY ) ; mouseclick , left , %pixelX% , %pixelY%
		}
		
if ( checkpixel( checkx := 862 , checky := 885 , checkRGB := 0x537208 )) ; ready
{
	MuseReliableClick(checkx, checky)
} 

		PixelSearch , pixelX , pixelY , 860 ,  880  ,  870 , 890 , 0x537208 , 1 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
		if Errorlevel = 0 ; pixel is found
		{
			MuseReliableClick( pixelX , pixelY ) ; mouseclick , left , %pixelX% , %pixelY%
		}
	
		send {w up}{e up}
	}
	loop, 10
	{
		send {s down}{e down}
		;mousemove,  863 , 875 ;  ready 
		if ( checkpixel( checkx := 863 , checky := 875 , checkRGB := 0x627D1B )) ; ready
		{
			MuseReliableClick(checkx, checky)
		}
		PixelSearch , pixelX , pixelY , 860 ,  870  ,  870 , 880 , 0x627D1B , 1 , fast RGB ; ready
		if Errorlevel = 0 ; pixel is found
		{
			MuseReliableClick( pixelX , pixelY ) ; mouseclick , left , %pixelX% , %pixelY%
		}
		
		if ( checkpixel( checkx := 862 , checky := 885 , checkRGB := 0x537208 )) ; ready
{
	MuseReliableClick(checkx, checky)
} 
	PixelSearch , pixelX , pixelY , 860 ,  880  ,  870 , 890 , 0x537208 , 1 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
		if Errorlevel = 0 ; pixel is found
		{
			MuseReliableClick( pixelX , pixelY ) ; mouseclick , left , %pixelX% , %pixelY%
		}
		
		send {s up}{e up}
	}
	
	

	send {esc}r{enter}
} 

/*
if ( checkpixel( checkx := 41 , checky := 108 , checkRGB := 0xF7F7F8 ))  ; home button 
{
	MuseReliableClick(checkx, checky)
}
*/

if ( checkpixel( checkx := 41 , checky := 108 , checkRGB := 0xF4F5F8 ))  ; home button 
{
	;MuseReliableClick(checkx, checky)
	;msgbox ,,, Home button %A_ThisFunc% %a_linenumber% checkx %checkx%  checky %checky%  checkRGB -%checkRGB%- %clipboard% 

	if ( checkpixel( checkx := 416 , checky := 601 , checkRGB := 0xF4F5F8 )) ; ; TDX big blue play button
	{
		MuseReliableClick(checkx, checky)
	}

	if ( checkpixel( checkx := 141 , checky := 595 , checkRGB := 0x4A72FF ))  ; TDX big blue play button
	{ 
		MuseReliableClick(checkx, checky) 
	}

	if ( checkpixel( checkx := 641 , checky := 275 , checkRGB := 0xF84210 ))  ; TDX game red X selected
	{  
		MuseReliableClick(checkx, checky) 
		
		if ( checkpixel( checkx := 916 , checky := 288 , checkRGB := 0xF4F5F8 ))  ;  blue play button
		{  
			MuseReliableClick(checkx, checky) 
		} 
	}

	if ( checkpixel( checkx := 1175 , checky := 68 , checkRGB := 0x212227 ))   ; search bar exist
	{
		MuseReliableClick(checkx, checky, Left, 3) 
		
		if ( checkpixel( checkx := 456 , checky := 356 , checkRGB := 0xF24239 ))  ; TDX game red X in recent
		{
			MuseReliableClick(checkx, checky)
		}

		;msgbox ,,, %A_ThisFunc% %a_linenumber% checkx %checkx%  checky %checky%  checkRGB %checkRGB% search bar present %clipboard% , 0.5
		send {click}{ctrl down}a{ctrl up}tower defense x{enter}
		;msgbox ,,, %A_ThisFunc% %a_linenumber% checkx %checkx%  checky %checky%  checkRGB %checkRGB% search bar present %clipboard% ,1 
	}
}

if ( checkpixel( checkx := 230 , checky := 468 , checkRGB := 0xB2FC00 )) ; inventory backpack
{
  
	PixelSearch , pixelX , pixelY , 1000 ,  145  ,  1800 , 150 , 0xD8ED00 , 0 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
	if Errorlevel = 0 ; pixel is found
	{
				MuseReliableClick( pixelX , pixelY ) ; mouseclick , left , %pixelX% , %pixelY%
	}

	PixelSearch , pixelX , pixelY , 1000 ,  175  ,  1800 , 180 , 0xADDA00 , 0 , fast RGB  ; close other player box
	if Errorlevel = 0 ; pixel is found
	{
				MuseReliableClick( pixelX , pixelY ) ; mouseclick , left , %pixelX% , %pixelY%
	}

/*
 if ( checkpixel( checkx := 1331 , checky := 178 , checkRGB := 0xADDA00 )) ; close other player box
	{
		MuseReliableClick(checkx, checky)
	}
	
  if ( checkpixel( checkx := 1331 , checky := 178 , checkRGB := 0xADDA00 )) ; close other player box
	{
		MuseReliableClick(checkx, checky)
	} 	
*/
	
	if ( checkpixel( checkx := 898 , checky := 691 , checkRGB := 0x18CB00 ))  ; claim rewards
	{  
		MuseReliableClick(checkx, checky) 
	} 

	loop, 5
	{
		pixelX := 0
		pixelY := 0
		PixelSearch , pixelX , pixelY , 1000 ,  175  ,  1800 , 180 , 0xADDA00 , 1 , fast RGB  ; close other player box
		if Errorlevel = 0 ; pixel is found
		{
			MuseReliableClick( pixelX , pixelY ) ; mouseclick , left , %pixelX% , %pixelY%
		}
		else if Errorlevel = 1 ; pixel not found
		{
			break
		}
	}

	if ( checkpixel( checkx := 752 , checky := 854 , checkRGB := 0x6AAB01 ))  ; play solo
	{ 
		MuseReliableClick(checkx, checky) 
	}

	if ( checkpixel( checkx := 742 , checky := 839 , checkRGB := 0x141C04 )) ; grayed play solo
	{
		MuseReliableClick(checkx, checky)
	}
	
	if ( checkpixel( checkx := 742 , checky := 839 , checkRGB := 0x141C04 )) ; grayed play solo
	{
		MuseReliableClick(checkx, checky)
	} 

	loop, 5
	{
		pixelX := 0
		pixelY := 0
		PixelSearch , pixelX , pixelY , 1000 ,  175  ,  1800 , 180 , 0xADDA00 , 1 , fast RGB  ; close other player box
		if Errorlevel = 0 ; pixel is found
		{
			MuseReliableClick( pixelX , pixelY ) ; mouseclick , left , %pixelX% , %pixelY%
		}
		else if Errorlevel = 1 ; pixel not found
		{
			break
		}
	}

	if ( checkpixel( checkx := 749 , checky := 842 , checkRGB := 0x9FE700 )) ; play solo
	{
		MuseReliableClick(checkx, checky)
	} 
}


if ( checkpixel( checkx := 426 , checky := 65 , checkRGB := 0x5A7F00 )) ; grayed gear select event mode 
{
	loop, 5
	{
		
		;MuseReliableClick(1406, 515, Left, 1) 
		
	if ( checkpixel( checkx := 796 , checky := 474 , checkRGB := 0x0001FF )) ; tower battles
	{
		MuseReliableClick(checkx, checky)
	} 

 
		/*
		if ( checkpixel( checkx := 1184 , checky := 585 , checkRGB := 0xFFFFC1 )) ; halloween
		{
			MuseReliableClick(checkx, checky)
		}
		*/ 

if ( checkpixel( checkx := 1202 , checky := 301 , checkRGB := 0xAD00EF )) ; 
{
	checky := 301 + 50
	MuseReliableClick(checkx, checky)
} 

 
mousemove,  1088 ,  481
		if ( checkpixel( checkx := 1088 , checky := 481 , checkRGB := 0xFFFF20 )) ; events
		{
			MuseReliableClick(checkx, checky)
		} 
		
		if ( checkpixel( checkx :=  1088, checky := 481 , checkRGB := 0xFFFF20 )) ; events
		{
			MuseReliableClick(checkx, checky)
		} 
		
	PixelSearch , pixelX , pixelY , 1080 ,  480  ,  1090 , 490 , 0xFFFF20 , 0 , fast RGB ; events
	if Errorlevel = 0 ; pixel is found
	{
				MuseReliableClick( pixelX , pixelY ) ; mouseclick , left , %pixelX% , %pixelY%
	}


		

		/*
		if ( checkpixel( checkx := 1271 , checky := 566 , checkRGB := 0xB06307 )) ;   halloween
		{
			MuseReliableClick(checkx, checky)
			MuseReliableClick( 1075 ,  569 ) ; vote hard
		}
		*/
	}
}

if ( checkpixel( checkx := 870 , checky := 846 , checkRGB := 0x4E4E4E )) ;  gray ready gray
{
	MuseReliableClick(checkx, checky)
	MuseReliableClick(550, 586) ; vote casual
	MuseReliableClick(550, 586) ; vote casual
	if ( checkpixel( checkx := 550 , checky := 586 , checkRGB := 0x030249 )) ; vote casual
	{
		MuseReliableClick(checkx, checky)
	} 

	;MuseReliableClick( 1266 , 554 ) ; vote nightmare
	;MuseReliableClick( 1041 , 488) ; vote hard
	MuseReliableClick(checkx, checky, Left, 1) 
	MuseReliableClick(checkx, checky, Left, 2) 
} 

if ( checkpixel( checkx := 1865 , checky := 471 , checkRGB := 0x284A00 ))  ; grayed speed control if ( checkpixel( checkx := 1865 , checky := 475 , checkRGB := 0x2A160D )) ; grayed speed control
{
	MuseReliableClick(550, 586)  ; casual
	;MuseReliableClick(1052, 705) ; hard

	if ( checkpixel( checkx := 1076 , checky := 841 , checkRGB := 0x0A7E19 )) ; green ready green
	{
		;MuseReliableClick(1052, 705) ; hard
		;MuseReliableClick(1052, 705) ; hard
		MuseReliableClick(checkx, checky)
	} 
	
	if ( checkpixel( checkx := 981 , checky := 855 , checkRGB := 0xFFFFFF )) ; green ready green
	{
		;MuseReliableClick(1052, 705) ; hard
		;MuseReliableClick(1052, 705) ; hard
		MuseReliableClick(checkx, checky)
	} 

	if ( checkpixel( checkx := 1063 , checky := 844 , checkRGB := 0x0A7A18 )) ; green ready green
	{
		;MuseReliableClick(1052, 705) ; hard
		;MuseReliableClick(1052, 705) ; hard
		MuseReliableClick(checkx, checky)
	} 

 
 MuseReliableClick(1072, 857)
 
 MuseReliableClick(1063, 844)
 
}

if ( checkpixel( checkx := 1887 , checky := 475 , checkRGB := 0x2A160D )) ; grayed speed control
{
	if ( checkpixel( checkx := 981 , checky := 855 , checkRGB := 0xFFFFFF )) ; green ready green
	{
		;MuseReliableClick(1052, 705) ; hard
		;MuseReliableClick(1052, 705) ; hard
		MuseReliableClick(checkx, checky)
	} 
} 

 


if ( checkpixel( checkx := 1075 , checky := 846 , checkRGB := 0x4D4D4D )) ; gray ready gray
{
	if ( checkpixel( checkx := 692 , checky := 368 , checkRGB := 0x0EAB21 )) ; vote casual 
	{
		MuseReliableClick(checkx, checky)
	} 
	
	/*
	if ( checkpixel( checkx := 1041 , checky := 488 , checkRGB := 0xEB5D01 )) ; vote hard
	{
		MuseReliableClick(checkx, checky)
	} 
	*/
 
	if ( checkpixel( checkx := 1266 , checky := 554 , checkRGB := 0xF9E26D )) ; vote nightmare
	{
		;MuseReliableClick(checkx, checky)
	} 
} 


if ( checkpixel( checkx := 1209 , checky := 378 , checkRGB := 0x8ECC00 )) ; dismiss speed control
{
	MuseReliableClick(checkx, checky)
}

if ( checkpixel( checkx := 1824 , checky := 606 , checkRGB := 0x153400 )) ; in battle
{
	MuseReliableClick(checkx, checky)
	yesinbattle()
}

if ( checkpixel( checkx := 957 , checky := 780 , checkRGB := 0xDDFFC8 )) ; return to lobby
{
	if ( checkpixel( checkx := 1074 , checky := 771 , checkRGB := 0x000000 )) ; return to lobby
	{
		MuseReliableClick(checkx, checky)
	}
} 

if ( checkpixel( checkx := 1133 , checky := 781 , checkRGB := 0xC4E8AB )) ; return to lobby
{
	if ( checkpixel( checkx := 1174 , checky := 776 , checkRGB := 0x000000 )) ;  ;  go  return to lobby
	{
		MuseReliableClick(checkx, checky)
	} 
} 

 
if ( checkpixel( checkx := 1049 , checky := 646 , checkRGB := 0xFFB600 )) ; EXPERT
{
	msgbox ,,, export ,1
	if ( checkpixel( checkx := 1085 , checky := 647 , checkRGB := 0xFFC200 )) ; EXPRERT
	{
		send {esc}L{enter}
	} 
} 

if ( checkpixel( checkx := 1107 , checky := 628 , checkRGB := 0xFFFFFF )) ; reconnect
{
	if ( checkpixel( checkx := 1117 , checky := 628 , checkRGB := 0xFFFFFF )) ; reconnect
	{
		if ( checkpixel( checkx := 1127 , checky := 628 , checkRGB := 0xFFFFFF )) ; reconnect
		{
			send {esc}L{enter} ; MuseReliableClick(checkx, checky)
		} 
	} 
} 


 
if ( checkpixel( checkx := 230 , checky := 468 , checkRGB := 0xB2FC00 )) ; inventory backpack
{
  
		MuseReliableClick(checkx, checky) 
} 


 
if ( checkpixel( checkx := 872 , checky := 1534 , checkRGB := 0xB4FF00 )) ; speed control present
{
	if ( checkpixel( checkx := 807 , checky := 422 , checkRGB := 0x6C9212 )) ; assault loadout
	{
		MuseReliableClick(checkx, checky)
	} 
			
	if ( checkpixel( checkx := 803 , checky := 411 , checkRGB := 0x6C9212 )) ; ; assault loadout
	{
		MuseReliableClick(checkx, checky)
	} 
 
	if ( checkpixel( checkx := 957 , checky := 780 , checkRGB := 0xDDFFC8 )) ; return to lobby
	{
		if ( checkpixel( checkx := 1074 , checky := 771 , checkRGB := 0x000000 )) ; return to lobby
		{
			MuseReliableClick(checkx, checky)
		}
	} 

	if ( checkpixel( checkx := 1133 , checky := 781 , checkRGB := 0xC4E8AB )) ; return to lobby
	{
		if ( checkpixel( checkx := 1174 , checky := 776 , checkRGB := 0x000000 )) ;  ;  go  return to lobby
		{
			MuseReliableClick(checkx, checky)
		} 
	} 

}


send {esc}
fileappend , a_linenumber %a_linenumber%`n , %a_scriptdir%\checkcolor.log
reload

if ( checkpixel( checkx := 655 , checky := 217 , checkRGB := 0xF35F4F ))  ; TDX game red X
{ 
	MuseReliableClick(checkx, checky, Left, 3) 
} 

		if ( checkpixel( checkx := 43 , checky := 113 , checkRGB := 0x454548 )) ;  home grayed
		{ 
			MuseReliableClick(checkx, checky) ; AHIClick(checkx, checky, L ,1,  1)  ; wiggleclick(checkx , checky)
		} 
		
		/*
		if ( checkpixel( checkx := 40 , checky := 114 , checkRGB := 0xF4F5F8 ))  ;home button
		{
			MuseReliableClick(checkx, checky) ; AHIClick(checkx, checky, L ,1,  1)  ; wiggleclick(checkx , checky)
		}
		*/
}

sleep 20
fileappend , a_linenumber %a_linenumber%`n , %a_scriptdir%\checkcolor.log
reload


yesinbattle(){

;red path  pixel   checkRGB := 0xDF4844 

		mouseminX = 476 ;600; 400 ; 500
		mouseminY = 259 ; 300
		mousemaxX = 873 ; 1700 ; 1000 ; 1500 
		mousemaxY = 656 ; 800 ; 900

charposx := 1025 ;  971
charposy := 525 ; 545
	
charposx := 974 
charposy := 549 

 ;MouseClickDrag, Right, 1000, 500, 1000, 800, 3 ;overhead view
 ;MouseClickDrag, Right, 975, 249, 975, 549, 3 ;overhead view
 mousemove, %charposx% ,  %charposy%
 
 
	loop, 2
	{	
		SetMouseDelay, 50
		if WinActive("ahk_exe RobloxPlayerBeta.exe")
			MouseClickDrag, Right, 975, 249, 975, 549, 3 ;overhead view ; MouseClickDrag, Right, 1000, 500, 1000, 800, 3 ;overhead view
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
			send {Wheeldown 10} ;max zoom out 
		;if WinActive("ahk_exe RobloxPlayerBeta.exe") 
			;send {Wheeldown 30} ;max zoom out 
		;if WinActive("ahk_exe RobloxPlayerBeta.exe") 
			;send {Wheelup 10} ; specific zoom in
	}

msgbox ,,, %A_ThisFunc% %a_linenumber% %clipboard% ,1 
	
	mouseminX = 750
	mouseminY = 550
	mousemaxX = 1250 
	mousemaxY = 900 ; 900	
/*
		mouseminX := charposx - a_index * 10
		mouseminY := charposy - a_index * 10
		mousemaxX := charposx + a_index * 10
		mousemaxY := charposy + a_index * 10
*/

		mouseminX = 476 ;600; 400 ; 500
		mouseminY = 259 ; 300
		mousemaxX = 873 ; 1700 ; 1000 ; 1500 
		mousemaxY = 656 ; 800 ; 900
	
charposx := 1025 ;  971
charposy := 525 ; 545
	
charposx := 974 
charposy := 549 

charposx := 967 
charposy := 543 
 
ShardX := 529 
ShardY := 531 ;, Pcolor 0x436EA3 PixelRGB 0xA36E43  

ShardX := 1065 
ShardX := 447

		/*checkx = 1254
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
*/
	/*
	if WinActive("ahk_exe RobloxPlayerBeta.exe") 
			send {click 1893 , 448 left 1} ; open speed control
		;if WinActive("ahk_exe RobloxPlayerBeta.exe") 
			;send {click 1052 , 161 left 1} ;skip wave
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
			send {click  1107 , 629 left 1} ; set 1.5 speed boost
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 			send {click 1194 , 766 left 1} ; return to lobby
		if WinActive("ahk_exe RobloxPlayerBeta.exe") 
 			send {click 1202 , 384 left 5} ;close speed control
*/
/*
checkx = 1039
checky = 161
checkcolor = 0x00EDD7
if (checkpixel(checkx, checky, checkcolor) = true) 
	send {click %checkx%, %checky% left 1}
*/
checkx = 1039
checky = 161

		factors = 1,-1
		randX := charposX 
		randY := charposY 

		loop, 1
		{
			tooltip
			mainloopindex := a_index
			
			if not WinActive("ahk_exe RobloxPlayerBeta.exe")
			{
				fileappend , a_linenumber %a_linenumber%`n , %a_scriptdir%\checkcolor.log
				reload
			}

			/*
			if WinActive("ahk_exe RobloxPlayerBeta.exe") 
					send q{click %charposX% , %charposY% left 2}{click 306 , 746 left 2}{click 306 , 638 left 1}
			if WinActive("ahk_exe RobloxPlayerBeta.exe") 
					send 6{click %charposX% , %charposY% left 2}{click 306 , 746 left 2}{click 306 , 638 left 1}q
*/

			factors := "1,-1"
			
				thisfactor := A_LoopField + 0
				randX := charposX + (thisfactor * mainloopindex *(( mousemaxX - charposX)/5))
				randX := floor(randX)
				;msgbox ,, , randX %randX% randY %randY% charposX %charposX% thisfactor %thisfactor%  mainloopindex %mainloopindex%   mousemaxX %mousemaxX% charposX %charposX% 
				;msgbox ,, , randX %randX% randY %randY% charposX %charposX% thisfactor %thisfactor%  mainloopindex %mainloopindex%   mousemaxX %mousemaxX% charposX %charposX% 
				;if WinActive("ahk_exe RobloxPlayerBeta.exe") 
					;send {click 306 , 746 left 2}{click 306 , 638 left 1}
	
			/*
				checkx = 234
				checky = 336
				checkcolor = 0x33B05E
			if (checkpixel(checkx, checky, checkcolor) = true) ; tower is selected
			{
				send {left down}
				if WinActive("ahk_exe RobloxPlayerBeta.exe") 
					send {click 306 , 746 left 2}{click 306 , 638 left 1}
				checkx = 194
				checky = 583
				checkcolor = 0xFFFFFF
				if (checkpixel(checkx, checky, checkcolor) = false) ; false = unit not set to "first" 
				{
					if WinActive("ahk_exe RobloxPlayerBeta.exe") 
						send c
				}
				send {left up}
			}
			else
			*/
			loop, 1
			{
					checkx = 234
					checky = 336
					checkcolor = 0x33B05E
				loop, 1 ; (checkpixel(checkx, checky, checkcolor) = false) ; tower not selected
				{
					if WinActive("ahk_exe RobloxPlayerBeta.exe")
					{
					
					/*
	loop, 1
	{	
		
		;SetMouseDelay, 50
		;MuseReliableClick(1000, 500, button:="right", count:=1, speed:=0, downOrUp:="down", relative:="", hold:=80, wiggle:=false, debug:=false) 		 ;overhead view
		send {Wheeldown 5} ;max zoom out 
		;MuseReliableClick(1000, 800, button:="right", count:=0, speed:=0, downOrUp:="down", relative:="", hold:=80, wiggle:=false, debug:=false) ;overhead view
		send {Wheeldown 5} ;max zoom out 
		;MuseReliableClick(1000, 800, button:="right", count:=1, speed:=0, downOrUp:="up", relative:="", hold:=80, wiggle:=false, debug:=false) ;overhead view
		send {Wheeldown 5} ;max zoom out 
		MouseClickDrag, Right, 1000, 500, 1000, 800, 0 ;overhead view
		send {Wheeldown 5} ;max zoom out 
		;if WinActive("ahk_exe RobloxPlayerBeta.exe") 
			;send {Wheeldown 30} ;max zoom out 
		;if WinActive("ahk_exe RobloxPlayerBeta.exe") 
			;send {Wheelup 10} ; specific zoom in
	}
	*/
	
							;top path max  301 , 634 ;, Pcolor 0x717171 PixelRGB 0x717171  
 
							;send 1{click %mousemaxX% , %charposY% left 2}{click 306 , 746 left 5}{click 215 , 689 left 1}v; {click 306 , 638 left 1}
							;send q{click %mousemaxX% , %charposY% left 2}{click 215 , 689 left 1} ; {click 306 , 746 left 2}{click 306 , 638 left 1}c
							
							;send 1{click %charposx% , %charposY% left 2}{click 306 , 746 left 5}{click 215 , 689 left 1}v ; {click 306 , 638 left 1}
							;send q{click %charposx% , %charposY% left 2}{click 215 , 689 left 1} ; {click 306 , 746 left 2}{click 306 , 638 left 1}c
							/*
								send 1{click %ShardX% , %ShardY% left 2}{click 305 , 652 left 5}{click 215 , 689 left 1} ; {click 306 , 638 left 1}
								send q{click %ShardX% , %ShardY% left 2}click 305 , 652 left 5{click 215 , 689 left 1} ; {click 306 , 746 left 2}{click 306 , 638 left 1}c

								checkx = 301
								checky = 803
								checkcolor = 0x0D0D0D
								if (checkpixel(checkx, checky, checkcolor) = true) ; bottom path x-5 upgrade available
									send {click %checkx% , %checkx% left 5}								

								checkx = 215 
								checky = 689
								checkcolor = 0x0D0D0D
								if (checkpixel(checkx, checky, checkcolor) = true) ; top path x-2 upgrade available
										send {click %checkx% , %checkx% left 1}							
							*/
							
							
							
								charposminX := charposx - 30 ; 476 ;600; 400 ; 500
								charposminY := charposy - 30  ; 300
								charposmaxX := charposx + 30 ; 1700 ; 1000 ; 1500 
								charposmaxY := charposy + 30 ; 800 ; 900
									


							if (quickcheckpixel(41 , 108, 0xF7F7F8)) ; home button ; if ( checkpixel( checkx := 41 , checky := 108 , checkRGB := 0xF7F7F8 ))  ; home button 
								return
							if (quickcheckpixel(230 , 468, 0xB2FC00)) ; inventory backpack
								return
							if (quickcheckpixel(755 , 941, 0xA82626)) ; red VIP
								return	
									testx = 41 
									testy = 108 
									testcolor = 0xF7F7F8
									PixelGetColor, Pcolor, %testx% , %testy%, RGB ; home button ; if ( checkpixel( checkx := 41 , checky := 108 , checkRGB := 0xF7F7F8 ))  ; home button 
									if (Pcolor = testcolor){
										msgbox ,,, %A_ThisFunc% %a_linenumber% found home button testx = 41 testy = 108 testcolor = 0xF7F7F8 ,1
										return
									}
										
							send q ; {click %ShardX% , %ShardY% left 2}{click 305 , 652 left 5}{click 215 , 689 left 1} ; {click 306 , 638 left 1}							
							send {ctrl down}
							Random, randnum, %randA% , %randA%
							send %randnum%
			
							loop, 3 
							{
								Random, randX, %charposminX% , %charposmaxX%
								Random, randY, %charposminY% , %charposmaxY%

								MuseReliableClick(randX, randY, button:="Left", count:=1, speed:=0, downOrUp:="", relative:="", hold:=20, wiggle:=false, debug:=false) ; MuseReliableClick(randx , randy)
								/*
								PixelSearch , pixelX , pixelY , 182 ,  695  ,  182 , 805 , 0xEEFFF5 , 1 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
								if Errorlevel = 0 ; pixel is found
								{
									sendinput rre ; rrerre ; eer ; rre
								}
								*/
								
								sendinput rre ; rrerre ; eer ; rre
							}	
							
							if (quickcheckpixel(41 , 108, 0xF7F7F8)) ; home button ; if ( checkpixel( checkx := 41 , checky := 108 , checkRGB := 0xF7F7F8 ))  ; home button 
										return
							if (quickcheckpixel(230 , 468, 0xB2FC00)) ; inventory backpack
								return
							if (quickcheckpixel(755 , 941, 0xA82626)) ; red VIP
								return
							Random, randnum, %randB% , %randB%
							send %randnum%
							loop, 3
							{
								Random, randX, %charposminX% , %charposmaxX%
								Random, randY, %charposminY% , %charposmaxY%
								sendinput rre ; rrerre ; eer ; rre
								MuseReliableClick(randX, randY, button:="Left", count:=1, speed:=0, downOrUp:="", relative:="", hold:=20, wiggle:=false, debug:=false) ; MuseReliableClick(randx , randy)
								sendinput rre ; rrerre ; eer ; rre
							}	
							send {ctrl up}
							
							
							
							
							if (quickcheckpixel(41 , 108, 0xF7F7F8)) ; home button ; if ( checkpixel( checkx := 41 , checky := 108 , checkRGB := 0xF7F7F8 ))  ; home button 
										return
							if (quickcheckpixel(230 , 468, 0xB2FC00)) ; inventory backpack
								return
							if (quickcheckpixel(755 , 941, 0xA82626)) ; red VIP
								return
								Random, randnum, %randC% , %randC%
								send %randnum%
								loop, 3
								{
									Random, randX, %charposminX% , %charposmaxX%
									Random, randY, %charposminY% , %charposmaxY%
									sendinput rre ; rrerre ; eer ; rre
									MuseReliableClick(randX, randY, button:="Left", count:=1, speed:=0, downOrUp:="", relative:="", hold:=20, wiggle:=false, debug:=false) ; MuseReliableClick(randx , randy)
									sendinput rre ; rrerre ; eer ; rre
								}	
								send {ctrl up}
								
								;send e ; r ;r
							
							loop, 20
							{

								if not WinActive("ahk_exe RobloxPlayerBeta.exe")
									break

							if (quickcheckpixel(41 , 108, 0xF7F7F8)) ; home button ; if ( checkpixel( checkx := 41 , checky := 108 , checkRGB := 0xF7F7F8 ))  ; home button 
								return

							if (quickcheckpixel(230 , 468, 0xB2FC00)) ; inventory backpack
								return
							if (quickcheckpixel(755 , 941, 0xA82626)) ; red VIP
								return

if ( checkpixel( checkx := 230 , checky := 468 , checkRGB := 0xB2FC00 )) ; inventory backpack
{
	break
}							
	
if ( checkpixel( checkx := 755 , checky := 941 , checkRGB := 0xA82626 )) ; red VIP
{
	break
}							


								;msgbox , %randX% , %randy%
								; bottom path x-5  upgrade available  relative 301 , 803 ;, Pcolor 0x0D0D0D PixelRGB 0x0D0D0D  
								; top path x-2 upgrade available  relative 215 , 689 ;, Pcolor 0x0D0D0D PixelRGB 0x0D0D0D  
																	
								; bottom path is upgraded relative 182 , 805 ;, Pcolor 0xEEFFF5 PixelRGB 0xF5FFEE  
								; top path is upgraded  relative 182 , 695 ;, Pcolor 0xEEFFF5 PixelRGB 0xF5FFEE  
								;send 1{click %charposx% , %charposY% left 2}{click 306 , 746 left 5}{click 215 , 689 left 1}v
								;send q{click %charposx% , %charposY% left 2}{click 306 , 746 left 5}{click 215 , 689 left 1}	 ; {click 306 , 638 left 1}
							
								;send 1{click %mousemaxX% , %clickY% left 2}{click 306 , 746 left 5}{click 215 , 689 left 1}v	;{click 306 , 638 left 1}
								;send q{click %mousemaxX% , %clickY% left 2}{click 306 , 746 left 5}{click 215 , 689 left 1}								;{click 1052 , 161 left 1}{click %clickX% , %clickY% left 2}{click 306 , 746 left 2}{click 306 , 638 left 1}c
							if (quickcheckpixel(41 , 108, 0xF7F7F8)) ; home button ; if ( checkpixel( checkx := 41 , checky := 108 , checkRGB := 0xF7F7F8 ))  ; home button 
								return	
							send q{ctrl down} ; {click %ShardX% , %ShardY% left 2}{click 305 , 652 left 5}{click 215 , 689 left 1} ; {click 306 , 638 left 1}							
							MuseReliableClick(1038, 172) ; skip wave
							minX := charposx - 75 ; 476 ;600; 400 ; 500
							minY := charposy - 75  ; 300
							maxX := charposx + 175 ; 1700 ; 1000 ; 1500 
							maxY := charposy + 75 ; 800 ; 900
					
							loop, 8
							{
								if not WinActive("ahk_exe RobloxPlayerBeta.exe")
									break

								Random, randX, %minx% , %maxx%
								Random, randY, %miny% , %maxy%
								sendinput rre ; rrerre ; eer ; rre
								MuseReliableClick(randx, randy, button:="Left", count:=1, speed:=0, downOrUp:="", relative:="", hold:=20, wiggle:=false, debug:=false) ; MuseReliableClick(randx , randy)
								sendinput rre ; rrerre ; eer ; rre
								;MuseReliableClick(charposx , charposy)
								; bottom path x-5  upgrade available  relative 301 , 803 ;, Pcolor 0x0D0D0D PixelRGB 0x0D0D0D  
								; top path x-2 upgrade available  relative 215 , 689 ;, Pcolor 0x0D0D0D PixelRGB 0x0D0D0D  
								; bottom path is upgraded relative 182 , 805 ;, Pcolor 0xEEFFF5 PixelRGB 0xF5FFEE  
								; top path is upgraded  relative 182 , 695 ;, Pcolor 0xEEFFF5 PixelRGB 0xF5FFEE 
								/*
								PixelSearch , pixelX , pixelY , 182 ,  695  ,  182 , 805 , 0xEEFFF5 , 1 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
								if Errorlevel = 0 ; pixel is found
								{
									sendinput rre ; rrerre ; eer ; rre
								}
								*/
								sendinput rre ; rrerre ; eer ; rre
								
							}	 
							
							if (quickcheckpixel(41 , 108, 0xF7F7F8)) ; home button ; if ( checkpixel( checkx := 41 , checky := 108 , checkRGB := 0xF7F7F8 ))  ; home button 
								return
							if (quickcheckpixel(230 , 468, 0xB2FC00)) ; inventory backpack
								return
							if (quickcheckpixel(755 , 941, 0xA82626)) ; red VIP
								return
							loop,2
							{
								send {ctrl down}
								Random, randnum, %randA% , %randA%
								send %randnum%
			
								loop, 3 
								{
									Random, randX, %charposminX% , %charposmaxX%
									Random, randY, %charposminY% , %charposmaxY%

									MuseReliableClick(randX, randY, button:="Left", count:=1, speed:=0, downOrUp:="", relative:="", hold:=20, wiggle:=false, debug:=false) ; MuseReliableClick(randx , randy)
									/*
									PixelSearch , pixelX , pixelY , 182 ,  695  ,  182 , 805 , 0xEEFFF5 , 1 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
									if Errorlevel = 0 ; pixel is found
									{
										sendinput rre ; rrerre ; eer ; rre
									}
									*/
									
									sendinput rre ; rrerre ; eer ; rre
								}	
							
								Random, randnum, %randDmin%, %randDmax%
								send %randnum%
								
								loop, 5
								{
									if not WinActive("ahk_exe RobloxPlayerBeta.exe")
										break
									Random, randX, %minx% , %maxx%
									Random, randY, %miny% , %maxy%
									sendinput rre ; rrerre
									MuseReliableClick(randx, randy, button:="Left", count:=1, speed:=0, downOrUp:="", relative:="", hold:=20, wiggle:=false, debug:=false) ; MuseReliableClick(randx , randy)
									/*
									PixelSearch , pixelX , pixelY , 182 ,  695  ,  182 , 805 , 0xEEFFF5 , 1 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
									if Errorlevel = 0 ; pixel is found
									{
									sendinput rre ; rrerre ; eer ; rre
									}
								*/
								
								sendinput rre ; rrerre ; eer ; rre
								}	 
							}
								send q{ctrl up}
								MuseReliableClick(1038, 172) ; skip wave
								;MuseReliableClick( 305 , 639 , left , 1 )
								;MuseReliableClick( 330 , 791 )
								;MuseReliableClick( 305 , 639 , left , 1 )
/*
								send 1 ; {click %ShardX% , %ShardY% left 2}{click 305 , 652 left 5} ; {click 306 , 746 left 2}{click 306 , 638 left 1}c
								Random, randX, %minx% , %maxx%
								Random, randY, %miny% , %maxy%
								MuseReliableClick(randx , randy) 
								;MuseReliableClick(ShardX , ShardY)
								send q
								MuseReliableClick(randx , randy) 
								send {ctrl down}rer{ctrl up}
								MuseReliableClick(1038, 172) ; skip wave
								
								;MuseReliableClick( 305 , 639 , left , 1 )
								;MuseReliableClick( 330 , 791 )
								;MuseReliableClick( 305 , 639 , left , 1 )
								;send {left down}
								
								
								send 1  ; {click %ShardX% , %ShardY% left 2}{click 305 , 652 left 5}{click 215 , 689 left 1} ; {click 306 , 638 left 1}
								Random, randX, %minx% , %maxx%
								Random, randY, %miny% , %maxy%
								MuseReliableClick(randx , randy) 
								;MuseReliableClick(ShardX , ShardY)
								send q{ctrl down}rer{ctrl up}
								MuseReliableClick(1038, 172) ; skip wave
								;MuseReliableClick( 305 , 639 , left , 1 )
								;MuseReliableClick( 330 , 791 )
								;MuseReliableClick( 305 , 639 , left , 1 )
								 
								send q ; {click %ShardX% , %ShardY% left 2}{click 305 , 652 left 5} ; {click 306 , 746 left 2}{click 306 , 638 left 1}c
								Random, randX, %minx% , %maxx%
								Random, randY, %miny% , %maxy%
								MuseReliableClick(randx , randy)
								;MuseReliableClick(ShardX , ShardY)
								MuseReliableClick(1038, 172) ; skip wave
								send q{ctrl down}rer{ctrl up}
								;MuseReliableClick( 305 , 639 , left , 1 )
								;MuseReliableClick( 330 , 791 )
								;MuseReliableClick( 305 , 639 , left , 1 )
								
								send 1 ; {click %ShardX% , %ShardY% left 2}{click 305 , 652 left 5}{click 215 , 689 left 1}
								Random, randX, %minx% , %maxx%
								Random, randY, %miny% , %maxy%
								MuseReliableClick(randx , randy)
								;MuseReliableClick(ShardX , ShardY)
								MuseReliableClick(1038, 172) ; skip wave
								send q{ctrl down}rer{ctrl up}
								;MuseReliableClick( 305 , 639 , left , 1 )
								;MuseReliableClick( 330 , 791 )
								;MuseReliableClick( 305 , 639 , left , 1 )

								send 1
								Random, randX, %minx% , %maxx%
								Random, randY, %miny% , %maxy%
								MuseReliableClick(randx , randy) 
								;MuseReliableClick(1077 , 554) ; MuseReliableClick(charposx , charposy) ; MuseReliableClick(1077 , 554)
								MuseReliableClick(1038, 172) ; skip wave
								send q{ctrl down}rer{ctrl up}
								;MuseReliableClick( 305 , 639 , left , 1 )
								;MuseReliableClick( 330 , 791 )
								;MuseReliableClick( 305 , 639 , left , 1 )
*/								
/*
									checkx = 301
									checky = 803
									checkcolor = 0x0D0D0D
									if (checkpixel(checkx, checky, checkcolor) = true) ; bottom path x-5  upgrade available
										send {click %checkx% , %checkx% left 10}								

									checkx = 215 
									checky = 689
									checkcolor = 0x0D0D0D
									if (checkpixel(checkx, checky, checkcolor) = true) ; top path x-2  upgrade available
											send {click %checkx% , %checkx% left 1}							

									checkx = 1059 
									checky = 179 
									checkcolor = 0x00F3E
									if (checkpixel(checkx, checky, checkcolor) = true) ; skip wave available
											send qqq{click %checkx% , %checkx% left 3}	
*/

								;send 6{click %mousemaxX% , %clickY% left 2}{click 306 , 746 left 3}{click 215 , 689 left 1}	;{click 306 , 638 left 1}
								;send q{click 1194 , 766 left 1}{click 306 , 746 left 3}{click 215 , 689 left 1}									;{click 1052 , 161 left 1}{click %clickX% , %clickY% left 2}{click 306 , 746 left 2}{click 306 , 638 left 1}c
								
								send q
								MuseReliableClick(1194 , 766)								
								;MuseReliableClick(1038, 172) ; skip wave
								MuseReliableClick(1893 , 445 ) ; click speed control 
								MuseReliableClick(1118 , 635 ) ; click 1.5x speed
								MuseReliableClick(1209 , 378 )  ; dismiss speed control
								MuseReliableClick( 1211 , 371  )   ; dismiss speed control

								;send {left up}
							
						}

							send q{left up}
							if WinActive("ahk_exe RobloxPlayerBeta.exe") 
								send {click 1194 , 766 left 1} ; return to lobby 
					}
				}
			}
			
				if WinActive("ahk_exe RobloxPlayerBeta.exe") 
				{
					;send {click 306 , 746 left 2}{click 306 , 638 left 1}6{click %mouseminX% , %mousemaxY% left 2}{click 306 , 746 left 2}{click 306 , 638 left 1}
					;send {left}
					if WinActive("ahk_exe RobloxPlayerBeta.exe") 
						send {click 1893 , 448 left 1} ; open speed control
					if WinActive("ahk_exe RobloxPlayerBeta.exe") 
						send {click 1052 , 161 left 1} ;skip wave
					if WinActive("ahk_exe RobloxPlayerBeta.exe") 
						send {click  1107 , 629 left 1} ; set 1.5 speed boost
					if WinActive("ahk_exe RobloxPlayerBeta.exe") 
						send {click 1194 , 766 left 1} ; return to lobby
					if WinActive("ahk_exe RobloxPlayerBeta.exe") 
						send {click 1202 , 384 left 3} ;close speed control
					;send {left}q
					send q

					/*
					checkx = 194
					checky = 583
					checkcolor = 0xFFFFFF
					if (checkpixel(checkx, checky, checkcolor) = false){ ; false = unit not set to "first" 
						loop, 5 {
							if (checkpixel(checkx, checky, checkcolor) = true)
								break
							else
								send c{click 306 , 746 left 2}{click 306 , 638 left 1}
						}
					}
					*/
				
				}
		

			;tooltip , %A_ThisFunc% %a_linenumber%  randX %randX%  randY %randY% ,  %randX% , %randY%
			;msgbox ,, , %A_ThisFunc% %a_linenumber%  randX %randX%  randY %randY% ,  %randX% , %randY%

				;if ( randX < mouseminX or randX > mousemaxX)
					;break
		}

	tooltip

	;msgbox ,,, DONE %A_ThisFunc% %a_linenumber% %pcolor% %checkcolor% , 1
}


checkpixel(checkx , checky, checkcolor){

checksleep :=  a_index * 100

fileappend , %checkx% %checky% %checkcolor%`n , %a_scriptdir%\checkcolor.log

	minX := checkx - 1
	minY := checky - 1
mousemove %minX% , %minY% , 1
	maxX := checkx + 1
	maxY := checky + 1
mousemove %maxX% , %maxY% , 1

mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
		sleep 50

PixelSearch , pixelX , pixelY , %minX% ,  %minY%  ,  %maxX% , %maxY% , %checkcolor% , 25 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
if Errorlevel = 0 ; pixel is found
{
	pcolor := checkcolor
	;mouseclick , left , %pixelX% , %pixelY%
	;msgbox ,,, Home button %A_ThisFunc% %a_linenumber% checkx %checkx%  checky %checky%  checkRGB -%checkRGB%- %clipboard% 
}

if Errorlevel = 1 ; pixel not found
{

; Errorlevel 0 checkcolor 0xF4F5F8 Pcolor 0xF7F7F8

	PixelGetColor, Pcolor, %checkx% , %checky%, RGB ; Added RGB mode here
	clipboard = Errorlevel %Errorlevel% checkcolor %checkcolor% Pcolor %Pcolor% 
	;msgbox ,,, Errorlevel %Errorlevel% checkcolor %checkcolor% Pcolor %Pcolor%  ,1
	sleep 50
	return false
}

	loop, 3
	{
		;msgbox  %checkx% %checky% %checkcolor%
		mousemove %minX% , %minY% , 1
		sleep 20
		mousemove %maxX% , %maxY% , 1
		sleep 20
		mousemove %checkx% , %checky% , 1 ;, Pcolor 0x000000 PixelRGB 0x000000 
		sleep 20

		;msgbox  %checkx% %checky% %checkcolor%

		while  not (pcolor  = "") 
		{
			pcolor = 
			sleeptime :=  a_index * 20
			sleep %a_index%
			tooltip ,  sleeptime %sleeptime% , 0 ,0
			if (pcolor  = "") 
				break
		}

		tooltip

		;msgbox  %checkx% %checky% %checkcolor%
		while  (pcolor  = "") 
		{	
			PixelGetColor, Pcolor, %checkx% , %checky%, RGB ; Added RGB mode here
			sleeptime :=  a_index * 20
			sleep %sleeptime%
			tooltip ,  sleeptime %sleeptime% , 0 ,0
			if (pcolor <> "") 
				break
		}

		clipboard = %Pcolor%
		;msgbox  ,,, checkx %checkx% checky %checky% checkcolor -%checkcolor%- Pcolor -%Pcolor%- clipboard -%clipboard%- ,1
		tooltip

		;clipboard = a_linenumber %a_linenumber% pcolor -%pcolor%- checkcolor -%checkcolor%-
	 
		;msgbox , , , %clipboard%, 1

		 tooltip , %a_linenumber% %clipboard% , %checkx% , %checky%
		 tooltip
		
		if (pcolor = checkcolor)
		{
			break
		}

	minX := checkx - 1
	minY := checky - 1
mousemove %minX% , %minY% , 1
	maxX := checkx + 1
	maxY := checky + 1
mousemove %maxX% , %maxY% , 1

sleep 50
PixelSearch , pixelX , pixelY , %minX% ,  %minY%  ,  %maxX% , %maxY% , %checkcolor% , 5 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
if Errorlevel = 0 ; pixel is found
{
	pcolor := checkcolor
	;mouseclick , left , %pixelX% , %pixelY%
	;msgbox ,,, Home button %A_ThisFunc% %a_linenumber% checkx %checkx%  checky %checky%  checkRGB -%checkRGB%- %clipboard% 
}

if (pcolor = checkcolor)
{
	break
}

sleep %checksleep%

}


if (pcolor = checkcolor)
	{
		clipboard =  pixelX %pixelX% pixelY %pixelY% Pcolor %Pcolor% 
		;msgbox ,,, a_linenumber %a_linenumber% pixelX %pixelX% pixelY %pixelY%  clipboard %clipboard% pcolor %pcolor% checkcolor %checkcolor% 
		sleep 50
		return true
	}
	else
	{
		sleep 50
		return false
	}
		
		
}		
OLDMuseReliableClick(x, y) {

	if not WinActive("ahk_exe RobloxPlayerBeta.exe") 
	{
		winactivate , ahk_exe RobloxPlayerBeta.exe
		return
	}

	clipboard = %x% %y%

	MouseMove, % x-2, % y-2, 0
	;Sleep, 10
	MouseMove, % x-1, % y-1, 0
	;Sleep, 10
	MouseMove, %x%, %y%, 0
	SendMode, Event
	Sleep, 20
	Send, {Click Down 10}  ; Click, Down
	Sleep, 75 ; hold it - this is the key part, 50-100ms
	Send, {Click Up 10}  ; Click, Up
	Sleep, 20

	;msgbox ,,, clipboard %clipboard% x %x% y %y% testcolor %testcolor% checkRGB %checkRGB% clipboard %clipboard%
}

quickclick(clickx, clicky){
	MouseGetPos, curX, curY
	sendinput {click  %clickx% , %clicky% , left , 1 }
	mousemove, %curX%, %curY%
return
}

quickcheckpixel(testx , testy, testcolor){
									testx = %testx% 
									testy = %testy%
									testcolor = 0xF7F7F8
									PixelGetColor, Pcolor, %testx% , %testy%, RGB ; home button ; if ( checkpixel( checkx := 41 , checky := 108 , checkRGB := 0xF7F7F8 ))  ; home button 
									if (Pcolor = testcolor)
										return true
									else
										return false
}

returntolobby(){

if ( checkpixel( checkx := 957 , checky := 780 , checkRGB := 0xDDFFC8 )) ; return to lobby
{
	if ( checkpixel( checkx := 1074 , checky := 771 , checkRGB := 0x000000 )) ; return to lobby
	{
		mousemove, 1074, 771
		sleep 100
		send {click 1074, 771 , left ,1}
		
		MuseReliableClick(checkx, checky)
	}
} 

}



; Click:    Click, X, Y, ClickCount, Speed, DownOrUp, Relative
; MouseClick: MouseClick, Button, X, Y, ClickCount, Speed, DownOrUp, Relative
; hold / wiggle / debug are extras, at the end so old calls still work

MuseReliableClick(x, y, button:="Left", count:=1, speed:=0, downOrUp:="", relative:="", hold:=40, wiggle:=false, triggerline:=false , debug:=false) {
    
	if !WinActive("ahk_exe RobloxPlayerBeta.exe")
    {
        WinActivate, ahk_exe RobloxPlayerBeta.exe
        WinWaitActive, ahk_exe RobloxPlayerBeta.exe, , 2
        if !WinActive("ahk_exe RobloxPlayerBeta.exe")
            return
    }

	clipboard = click x %x% y %y%
	fileappend , click x %x% y %y%`n , %a_scriptdir%\checkcolor.log

    if (count < 1)
        count := 1

    if (relative = "R") {
        MouseGetPos, curX, curY
        x += curX
        y += curY
    }

    btnKey := "LButton"
    if (button = "Right" || button = "R")
        btnKey := "RButton"
    else if (button = "Middle" || button = "M")
        btnKey := "MButton"
    else if (button = "X1")
        btnKey := "XButton1"
    else if (button = "X2")
        btnKey := "XButton2"

    if (wiggle) {
        MouseMove, % x+1, % y+1, %speed%
        Sleep, 40
        MouseMove, % x-1, % y-1, %speed%
        Sleep, 40
    }
	
    MouseMove, %x%, %y%, %speed%
    Sleep, 40

	
	;msgbox ,,, clipboard %clipboard% x %x% y %y% testcolor %testcolor% checkRGB %checkRGB% clipboard %clipboard% ,1
		
    if (downOrUp = "Down" || downOrUp = "D") {
        SendEvent, % "{" . btnKey . " Down}"
        return
    }
	
    if (downOrUp = "Up" || downOrUp = "U") {
        SendEvent, % "{" . btnKey . " Up}"
        return
    }

    Loop, %count% {
	
        SendEvent, % "{" . btnKey . " Down}"
       		
									testx = 1059 
									testy = 179 
									testcolor = 0x00F3E
									PixelGetColor, Pcolor, %testx% , %testy%, RGB ; skip wave
									if (Pcolor = testcolor)
										quickclick(testx, testy)

								/*
									*testx = 231 
									testy = 448 
									testcolor = 0x5A7F00
									PixelGetColor, Pcolor, %testx% , %testy%, RGB ; grayed inventory backpack
									if (Pcolor = testcolor)
										send {esc}
								*/
									
							/*
									testx = 1887 
									testy = 475 
									testcolor = 0x2A160D
									PixelGetColor, Pcolor, %testx% , %testy%, RGB ; grayed speed control
									if (Pcolor = testcolor)
										send {esc}
							*/

							/*
									testx = 1879 
									testy = 449 
									testcolor = 0x243300
									PixelGetColor, Pcolor, %testx% , %testy%, RGB ; deep grayed speed control
									if (Pcolor = testcolor)
										send {esc}
							*/

							/*
									PixelSearch , pixelX , pixelY , 182 ,  695  ,  182 , 805 , 0xEEFFF5 , 1 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
									if Errorlevel = 0 ; pixel is found
									{
										sendinput rre ; rrerre ; eer ; rre
										msgbox  , , , send rre  , 0.1
									}
							*/
							/*
									
									PixelSearch , pixelX , pixelY , 278 ,  654  ,  278 , 805 , 0xA2C600 , 1 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
									if Errorlevel = 0 ; pixel is found
									{
										sendinput rre ; rrerre ; eer ; rre
										msgbox  , , , send rre  , 0.5
									}
							*/
							/*
									PixelSearch , pixelX , pixelY ,  298 ,  653  ,  298 , 805 , 0x030400 , 1 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
									if Errorlevel = 0 ; pixel is found
									{
										sendinput rre ; rrerre ; eer ; rre
										msgbox  , , , send rre  , 0.5
									}
							*/
									PixelSearch , pixelX , pixelY ,  301 ,  691  ,  301 , 805 , 0x0D0D0D , 10 , fast RGB ; relative 693 , 262 ; , Pcolor 0x779F0C PixelRGB 0x0C9F77 
									if Errorlevel = 0 ; pixel is found
									{
										sendinput rre ; rrerre ; eer ; rre
										send rre
										;msgbox  , , , send rre  , 0.5
									}

									testx = 717 
									testy = 625 
									testcolor = 0xB1FD00 ; left side of "defeated" popup
									PixelGetColor, Pcolor, %testx% , %testy%, RGB ; return to lobby
									if (Pcolor = testcolor)
									{
										if ( checkpixel( checkx := 957 , checky := 780 , checkRGB := 0xDDFFC8 )) ; return to lobby
										{
											if ( checkpixel( checkx := 1074 , checky := 771 , checkRGB := 0x000000 )) ; return to lobby
											{
												mousemove, 1074, 771
												sleep %hold%
												MouseClick, Left,,, 1, 0, D  ; — Holds down (D) at the current position with speed 0. 
												sleep %hold%
												MouseClick, Left,,, 1, 0, U ; — Holds up (U) at the current position with speed 0. 											
												sleep %hold%
											}
										}
									}
		
		Sleep, %hold%
		
        SendEvent, % "{" . btnKey . " Up}"
        if (A_Index < count)
            Sleep, 20
    }

    if (debug)
        MsgBox, , , % "x " . x . " y " . y . " button " . button . " count " . count, 
}

exitapp


$!esc::
$+esc::
$#esc::

soundBeep , 2500, 125
sendinput, {blind}{lshift up}{s up}{w up}{space up}{left up}
; soundBeep , Hz, ms
    Loop, 254 {
        vk := Format("vk{:02X}", A_Index)
        ; Check logical state (without "P") so we catch keys held down by a script
        if GetKeyState(vk) {
            SendInput, {%vk% Up}
        }
	}


winactivate,  - Notepad
soundBeep , 2500, 125
soundBeep , 2500, 125
exitapp
