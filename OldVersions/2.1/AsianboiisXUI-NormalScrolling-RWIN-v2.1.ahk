;{###### Program Settings ###############################################################################

#SingleInstance force
#NoEnv
#InstallMouseHook
#UseHook
#MaxHotkeysPerInterval 2147483647

Critical
SendMode Input
CoordMode, Mouse, Screen
SetScrollLockState, off
SetWorkingDir %A_ScriptDir%

;}

;{###### Variables Declearing ###########################################################################

global isScrolled := 0
global isCapsDown := 0
global isCapsKeyComboUsed := 0
global isCtrlDown := 0
global isInQwerty := 0

;}

;{###### Programming Asianboii's Dvorak Keyboard Layouts ################################################

; standard padv layouts

1:: SendInput, % GetKeyState("CapsLock", "T") ? "1" : "<"
2:: SendInput, % GetKeyState("CapsLock", "T") ? "2" : ">"
3:: SendInput, % GetKeyState("CapsLock", "T") ? "3" : "{{}" 
4:: SendInput, % GetKeyState("CapsLock", "T") ? "4" : "{}}"
5:: SendInput, % GetKeyState("CapsLock", "T") ? "5" : "|"
6:: SendInput, % GetKeyState("CapsLock", "T") ? "6" : "{^}"
7:: SendInput, % GetKeyState("CapsLock", "T") ? "7" : "&"
8:: SendInput, % GetKeyState("CapsLock", "T") ? "8" : "*"
9:: SendInput, % GetKeyState("CapsLock", "T") ? "9" : "("
0:: SendInput, % GetKeyState("CapsLock", "T") ? "0" : ")"
-:: [
=:: ]
q:: '
w:: ,
e:: .
r:: y
t:: p
y:: f

u::
	if (isCapsDown) {
		isCapsKeyComboUsed := 1
		Send ^{Left}
	} else {
		SendInput, % GetKeyState("CapsLock", "T") ? "G" : "g"
	}
return

i::
	if (isCapsDown) {
		isCapsKeyComboUsed := 1
		Send {Up}
	} else {
		SendInput, % GetKeyState("CapsLock", "T") ? "C" : "c"
	}
return

o::
	if (isCapsDown) {
		isCapsKeyComboUsed := 1
		Send ^{Right}
	} else {
		SendInput, % GetKeyState("CapsLock", "T") ? "R" : "r"
	}
return

p:: l
[:: /
]:: !
\:: @
a:: a
s:: o
d:: e
f:: i
g:: u
h:: d

j::
	if (isCapsDown) {
		isCapsKeyComboUsed := 1
		Send {Left}
	} else {
		SendInput, % GetKeyState("CapsLock", "T") ? "H" : "h"
	}
return

k::
	if (isCapsDown) {
		isCapsKeyComboUsed := 1
		Send {Down}
	} else {
		SendInput, % GetKeyState("CapsLock", "T") ? "T" : "t"
	}
return

l::
	if (isCapsDown) {
		isCapsKeyComboUsed := 1
		Send {Right}
	} else {
		SendInput, % GetKeyState("CapsLock", "T") ? "N" : "n"
	}
return

SC027:: s ; semicolon key
SC028:: SendInput, % GetKeyState("CapsLock", "T") ? "_" : "=" ; single quote key
z:: SC027
x:: q
c:: j
v:: k
b:: x
n:: b

m::
	if (isCapsDown == 1) {
		isCapsKeyComboUsed := 1
		Send {Home}
	} else {
		SendInput, % GetKeyState("CapsLock", "T") ? "M" : "m"
	}
return

,::
	if (isCapsDown == 1) {
		isCapsKeyComboUsed := 1
		Send {End}
	} else {
		SendInput, % GetKeyState("CapsLock", "T") ? "W" : "w"
	}
return

.:: v
/:: z

; shifted keys

+SC029:: SendInput ~
+1:: SendInput, % GetKeyState("CapsLock", "T") ? "<" : "1"
+2:: SendInput, % GetKeyState("CapsLock", "T") ? ">" : "2"
+3:: SendInput, % GetKeyState("CapsLock", "T") ? "{{}" : "3"
+4:: SendInput, % GetKeyState("CapsLock", "T") ? "{}}" : "4"
+5:: SendInput, % GetKeyState("CapsLock", "T") ? "|" : "5"
+6:: SendInput, % GetKeyState("CapsLock", "T") ? "{^}" : "6"
+7:: SendInput, % GetKeyState("CapsLock", "T") ? "&" : "7"
+8:: SendInput, % GetKeyState("CapsLock", "T") ? "*" : "8"
+9:: SendInput, % GetKeyState("CapsLock", "T") ? "(" : "9"
+0:: SendInput, % GetKeyState("CapsLock", "T") ? ")" : "0"
+-:: SendInput `%
+=:: SendInput $
+q:: SendInput :
+w:: SendInput -
+e:: SendInput {+}
+r:: SendInput, % GetKeyState("CapsLock", "T") ? "y" : "Y"
+t:: SendInput, % GetKeyState("CapsLock", "T") ? "p" : "P"
+y:: SendInput, % GetKeyState("CapsLock", "T") ? "f" : "F"
+u:: SendInput, % GetKeyState("CapsLock", "T") ? "g" : "G"
+i:: SendInput, % GetKeyState("CapsLock", "T") ? "c" : "C"
+o:: SendInput, % GetKeyState("CapsLock", "T") ? "r" : "R"
+p:: SendInput, % GetKeyState("CapsLock", "T") ? "l" : "L"
+[:: SendInput \
+]:: SendInput ?
+\:: SendInput {#}
+a:: SendInput, % GetKeyState("CapsLock", "T") ? "a" : "A"
+s:: SendInput, % GetKeyState("CapsLock", "T") ? "o" : "O"
+d:: SendInput, % GetKeyState("CapsLock", "T") ? "e" : "E"
+f:: SendInput, % GetKeyState("CapsLock", "T") ? "i" : "I"
+g:: SendInput, % GetKeyState("CapsLock", "T") ? "u" : "U"
+h:: SendInput, % GetKeyState("CapsLock", "T") ? "d" : "D"
+j:: SendInput, % GetKeyState("CapsLock", "T") ? "h" : "H"
+k:: SendInput, % GetKeyState("CapsLock", "T") ? "t" : "T"
+l:: SendInput, % GetKeyState("CapsLock", "T") ? "n" : "N"
+SC027:: SendInput, % GetKeyState("CapsLock", "T") ? "s" : "S"
+SC028:: SendInput, % GetKeyState("CapsLock", "T") ? "=" : "_"
+z:: SendInput " ;"
+x:: SendInput, % GetKeyState("CapsLock", "T") ? "q" : "Q"
+c:: SendInput, % GetKeyState("CapsLock", "T") ? "j" : "J"
+v:: SendInput, % GetKeyState("CapsLock", "T") ? "k" : "K"
+b:: SendInput, % GetKeyState("CapsLock", "T") ? "x" : "X"
+n:: SendInput, % GetKeyState("CapsLock", "T") ? "b" : "B"
+m:: SendInput, % GetKeyState("CapsLock", "T") ? "m" : "M"
+,:: SendInput, % GetKeyState("CapsLock", "T") ? "w" : "W"
+.:: SendInput, % GetKeyState("CapsLock", "T") ? "v" : "V"
+/:: SendInput, % GetKeyState("CapsLock", "T") ? "z" : "Z"

; space shifted keys

Space & SC029:: SendInput ~ ; dead key
Space & 1:: SendInput, % GetKeyState("CapsLock", "T") ? "<" : "1"
Space & 2:: SendInput, % GetKeyState("CapsLock", "T") ? ">" : "2"
Space & 3:: SendInput, % GetKeyState("CapsLock", "T") ? "{{}" : "3"
Space & 4:: SendInput, % GetKeyState("CapsLock", "T") ? "{}}" : "4"
Space & 5:: SendInput, % GetKeyState("CapsLock", "T") ? "|" : "5"
Space & 6:: SendInput, % GetKeyState("CapsLock", "T") ? "{^}" : "6"
Space & 7:: SendInput, % GetKeyState("CapsLock", "T") ? "&" : "7"
Space & 8:: SendInput, % GetKeyState("CapsLock", "T") ? "*" : "8"
Space & 9:: SendInput, % GetKeyState("CapsLock", "T") ? "(" : "9"
Space & 0:: SendInput, % GetKeyState("CapsLock", "T") ? ")" : "0"
Space & -:: SendInput `%
Space & =:: SendInput $
Space & q:: SendInput :
Space & w:: SendInput -
Space & e:: SendInput {+}
Space & r:: SendInput, % GetKeyState("CapsLock", "T") ? "y" : "Y"
Space & t:: SendInput, % GetKeyState("CapsLock", "T") ? "p" : "P"
Space & y:: SendInput, % GetKeyState("CapsLock", "T") ? "f" : "F"
Space & u:: SendInput, % GetKeyState("CapsLock", "T") ? "g" : "G"
Space & i:: SendInput, % GetKeyState("CapsLock", "T") ? "c" : "C"
Space & o:: SendInput, % GetKeyState("CapsLock", "T") ? "r" : "R"
Space & p:: SendInput, % GetKeyState("CapsLock", "T") ? "l" : "L"
Space & [:: SendInput \
Space & ]:: SendInput ?
Space & \:: SendInput {#}
Space & a:: SendInput, % GetKeyState("CapsLock", "T") ? "a" : "A"
Space & s:: SendInput, % GetKeyState("CapsLock", "T") ? "o" : "O"
Space & d:: SendInput, % GetKeyState("CapsLock", "T") ? "e" : "E"
Space & f:: SendInput, % GetKeyState("CapsLock", "T") ? "i" : "I"
Space & g:: SendInput, % GetKeyState("CapsLock", "T") ? "u" : "U"
Space & h:: SendInput, % GetKeyState("CapsLock", "T") ? "d" : "D"
Space & j:: SendInput, % GetKeyState("CapsLock", "T") ? "h" : "H"
Space & k:: SendInput, % GetKeyState("CapsLock", "T") ? "t" : "T"
Space & l:: SendInput, % GetKeyState("CapsLock", "T") ? "n" : "N"
Space & SC027:: SendInput, % GetKeyState("CapsLock", "T") ? "s" : "S"
Space & SC028:: SendInput, % GetKeyState("CapsLock", "T") ? "=" : "_"
Space & z:: SendInput " ;"
Space & x:: SendInput, % GetKeyState("CapsLock", "T") ? "q" : "Q"
Space & c:: SendInput, % GetKeyState("CapsLock", "T") ? "j" : "J"
Space & v:: SendInput, % GetKeyState("CapsLock", "T") ? "k" : "K"
Space & b:: SendInput, % GetKeyState("CapsLock", "T") ? "x" : "X"
Space & n:: SendInput, % GetKeyState("CapsLock", "T") ? "b" : "B"
Space & m:: SendInput, % GetKeyState("CapsLock", "T") ? "m" : "M"
Space & ,:: SendInput, % GetKeyState("CapsLock", "T") ? "w" : "W"
Space & .:: SendInput, % GetKeyState("CapsLock", "T") ? "v" : "V"
Space & /:: SendInput, % GetKeyState("CapsLock", "T") ? "z" : "Z"

; caps+back=>delete shortcut

*BackSpace::
	Suspend, Permit
	if (isCapsDown) {
		Send, {Blind}{Delete}
		isCapsKeyComboUsed := 1
	} else if (isCtrlDown && !isInQwerty) {
		SetKeyDelay, -1
		Send, {Blind}^+{Left}{Delete}
	} else {
		Send, {Blind}{BackSpace}
	}
return

; caps control

CapsLock::
+CapsLock::
	isCapsDown := 1
	isCapsKeyComboUsed := 0
return

CapsLock Up::
+Capslock Up::
	isCapsDown := 0
	
	if (!isCapsKeyComboUsed && !isScrolled) {
		if (!GetKeyState("CapsLock", "T"))
			SetCapsLockState, On
		else
			SetCapsLockState, Off
	}
	isScrolled := 0
	
	;**** TESTING AREA ****
	
	;SoundBeep, 441, 1000
	
return

; space control

$Space::
	if (!isScrolled)
		Send {Space}
	
	isScrolled := 0
return

+Space:: SendInput, {Space}

;}

;{###### Qwerty Keyboard Shortcuts ######################################################################

Tab::
	Suspend, Permit
	
	Suspend, On
	
	SetKeyDelay, -1
	
	if (isInQwerty || GetKeyState("Space", "P"))
		Send, {Blind}{Tab Down}
	
	Send, {Blind}{Tab Up}
return

Tab Up::
	Suspend, Off
	
	SetKeyDelay, -1
	
	if (isInQwerty)
		Suspend, On
	else if (A_PriorKey = "Tab" && !GetKeyState("Space", "P"))
		Send, {Blind}{Tab Down}
	
	Send, {Blind}{Tab Up}
return

*Ctrl::
	Suspend, Permit
	
	; pinning windows control
	
	if (GetKeyState("CapsLock", "T") && GetKeyState("Shift", "P")) {
		WinSet, AlwaysOnTop, , A
		
		return
	}
	
	isCtrlDown := 1
	
	SetKeyDelay, -1
	Send, {Blind}{Ctrl Down}
	
	Suspend, On	
return

*Ctrl Up::
	Suspend, Off
	
	SetKeyDelay, -1
	Send, {Blind}{Ctrl Up}
	
	isCtrlDown := 0
	
	if (isInQwerty)
		Suspend, On
return

*Alt::
	Suspend, Permit
	
	SetKeyDelay, -1
	Send, {Blind}{Alt Down}
	
	Suspend, On
return

*Alt Up::
	Suspend, Off
	
	SetKeyDelay, -1
	Send, {Blind}{Alt Up}
	
	if (isInQwerty)
		Suspend, On
return

*LWin::
	Suspend, Permit
	
	SetKeyDelay, -1
	Send, {Blind}{LWin Down}
	
	Suspend, On
return

*LWin Up::
	Suspend, Off
	
	SetKeyDelay, -1
	Send, {Blind}{LWin Up}
	
	if (isInQwerty)
		Suspend, On
return

*RWin::
	Suspend, Permit
	
	SetKeyDelay, -1
	Send, {Blind}{LWin Down}
	
	Suspend, On
return

*RWin Up::
	Suspend, Off
	
	SetKeyDelay, -1
	Send, {Blind}{LWin Up}
	
	if (isInQwerty)
		Suspend, On
return

;}

;{###### Magic Scrolling #########################################################################

WheelUp::
WheelDown::
+WheelUp::
+WheelDown::
	Suspend, Permit
	
	SetKeyDelay, -1
	
	_isScrollingDown := InStr(A_ThisHotkey, "Up")
	
	if (GetKeyState("Space", "P")) {
		if (_isScrollingDown) {
			Send, {WheelLeft}
			Send, {WheelLeft}
		} else { ; scrolling up
			Send, {WheelRight}
			Send, {WheelRight}
		}
		
		isScrolled := 1
		
		return
	}
	
	_isShiftDown := GetKeyState("Shift", "P")
	
	if (isCapsDown) {
		if (_isShiftDown)
			MoveBrightness(_isScrollingDown ? 2 : -2)
		else
			MoveVolume(_isScrollingDown ? 2 : -2)
		
		isScrolled := 1
		
		return
	}
	
	if (_isShiftDown) {
		if (isScrollingDown)
			Send, {+WheelDown}
		else
			Send, {+WheelUp}
		
		isScrolled := 1
		
		return
	}
	
	if (_isScrollingDown)
		Send, {WheelUp}
	else
		Send, {WheelDown}
return

; volume and brightness scrolling functions

MoveVolume(units) {
	SoundGet, _volume
	
	_volume := Clamp(_volume + units)
	SoundSet, _volume
	
	ShowToolTip(CreateASCIIBar(_volume))
}

Clamp(value, min = 0, max = 100) {
	return (value < min ? min : (value > max ? max : value))
}

ShowToolTip(texts, timeout = 1000) {
	MouseGetPos, _mouseX, _mouseY
	ToolTip, %texts%, %_mouseX% + 30, %_mouseY% - 50
	
	SetTimer, KillToolTip, %timeout%
}

CreateASCIIBar(value, max = 100, length = 25, emptyChar = " ", fullChar = "!") {
	bar := ""
	
	Loop, % Round((value / max) * length)
		bar .= fullChar
	
	Loop, % Round(length - (value / max) * length)
		bar .= emptyChar
	
	return "[" bar "] " Round(value)
}

KillToolTip:
	ToolTip, 
	SetTimer, KillToolTip, Off
return

MoveBrightness(units) {
	VarSetCapacity(SupportedBrightness, 256, 0)
	VarSetCapacity(SupportedBrightnessSize, 4, 0)
	VarSetCapacity(BrightnessSize, 4, 0)
	VarSetCapacity(Brightness, 3, 0)
	
	hLCD := DllCall("CreateFile"
	, Str, "\\.\LCD"
	, UInt, 0x80000000 | 0x40000000 ;Read | Write
	, UInt, 0x1 | 0x2  ; File Read | File Write
	, UInt, 0
	, UInt, 0x3  ; open any existing file
	, UInt, 0
	  , UInt, 0)
	
	if (hLCD != -1)
	{
		
		DevVideo := 0x00000023, BuffMethod := 0, Fileacces := 0
		  NumPut(0x03, Brightness, 0, "UChar")	; 0x01 = Set AC, 0x02 = Set DC, 0x03 = Set both
		  NumPut(0x00, Brightness, 1, "UChar")		; The AC brightness level
		  NumPut(0x00, Brightness, 2, "UChar")		; The DC brightness level
		DllCall("DeviceIoControl"
		  , UInt, hLCD
		  , UInt, (DevVideo<<16 | 0x126<<2 | BuffMethod<<14 | Fileacces) ; IOCTL_VIDEO_QUERY_DISPLAY_BRIGHTNESS
		  , UInt, 0
		  , UInt, 0
		  , UInt, &Brightness
		  , UInt, 3
		  , UInt, &BrightnessSize
		  , UInt, 0)
		
		DllCall("DeviceIoControl"
		  , UInt, hLCD
		  , UInt, (DevVideo<<16 | 0x125<<2 | BuffMethod<<14 | Fileacces) ; IOCTL_VIDEO_QUERY_SUPPORTED_BRIGHTNESS
		  , UInt, 0
		  , UInt, 0
		  , UInt, &SupportedBrightness
		  , UInt, 256
		  , UInt, &SupportedBrightnessSize
		  , UInt, 0)
		
		ACBrightness := NumGet(Brightness, 1, "UChar")
		ACIndex := 0
		DCBrightness := NumGet(Brightness, 2, "UChar")
		DCIndex := 0
		BufferSize := NumGet(SupportedBrightnessSize, 0, "UInt")
		MaxIndex := BufferSize-1

		Loop, %BufferSize%
		{
			ThisIndex := A_Index-1
			ThisBrightness := NumGet(SupportedBrightness, ThisIndex, "UChar")
			if ACBrightness = %ThisBrightness%
				ACIndex := ThisIndex
			if DCBrightness = %ThisBrightness%
				DCIndex := ThisIndex
		}
		
		if DCIndex >= %ACIndex%
		  BrightnessIndex := DCIndex
		else
		  BrightnessIndex := ACIndex

		BrightnessIndex += units
		
		if BrightnessIndex > %MaxIndex%
			BrightnessIndex := MaxIndex
			
		if BrightnessIndex < 0
			BrightnessIndex := 0

		NewBrightness := NumGet(SupportedBrightness, BrightnessIndex, "UChar")
		
		NumPut(0x03, Brightness, 0, "UChar")	; 0x01 = Set AC, 0x02 = Set DC, 0x03 = Set both
		  NumPut(NewBrightness, Brightness, 1, "UChar")		; The AC brightness level
		  NumPut(NewBrightness, Brightness, 2, "UChar")		; The DC brightness level
		
		DllCall("DeviceIoControl"
			, UInt, hLCD
			, UInt, (DevVideo<<16 | 0x127<<2 | BuffMethod<<14 | Fileacces) ; IOCTL_VIDEO_SET_DISPLAY_BRIGHTNESS
			, UInt, &Brightness
			, UInt, 3
			, UInt, 0
			, UInt, 0
			, UInt, 0
			, Uint, 0)
		
		DllCall("CloseHandle", UInt, hLCD)
		
		; display ascii bar
		ShowToolTip(CreateASCIIBar(Round(BrightnessIndex * 100 / MaxIndex), 100, 25))
	}

}

; muting

MButton::
	if (isCapsDown) {
		Send, {Volume_Mute}
		
		SoundGet, _isMuted, , Mute
		ShowToolTip(_isMuted == "On" ? "UNMUTE!" : "MUTE!", 500)
		
		isCapsKeyComboUsed := 1
	} else {
		Send, {MButton Down}
		Send, {MButton Up}
	}
return

;}

;{###### Toggling #######################################################################################

; THIS ONE BELOW CAUSES RIGHT-SHIFT TO TOGGLE only WHEN NO KEY IS PRESSED WHILE RIGHT-SHIFT
; IS PRESSED DOWN, WHICH IS WHAT WE ACTUALLY WANT
RShift & SC029:: 
	Suspend, Permit
	SendInput, ~
return

; right-shift toggle

RShift::
	Suspend, Permit
	
	;MsgBox, RSHIFT!! %A_IsSuspended%
	
	if (A_IsSuspended)
	{
		Send, {Blind}{LShift Down}
	}
	else
	{
		Toggle()
		
		isBarelySuspended := 1
	}
	
	SetKeyDelay, -1
	Send, {Blind}{RShift Up}
return

RShift Up::
	Suspend, Permit
	
	if (A_IsSuspended)
	{
		if (isBarelySuspended)
			isBarelySuspended := 0
		else
			Toggle()
	}
	
	SetKeyDelay, -1
	Send, {Blind}{LShift Up}
return

; scroll lock toggle

*ScrollLock::
	Suspend, Permit
	Toggle()
return

; toggle function

Toggle() {
	if (A_IsSuspended) ; is going to turn off
	{
		isInQwerty := 0
		
		ShowToolTip("ON!", 500)
		
		SoundBeep, 622
		SoundBeep, 932
	}
	else
	{
		isInQwerty := 1
		
		ShowToolTip("OFF!", 500)
		
		SoundBeep, 698
		SoundBeep, 466
	}
	
	;MsgBox, %isInQwerty%
	
	Suspend, Toggle
}

;}
