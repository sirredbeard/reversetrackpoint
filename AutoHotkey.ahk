; reversetrackpoint
; https://github.com/sirredbeard/reversetrackpoint

; The following script uses AutoHotkey to intercept mouse wheel up as a Hotkey to send a mouse wheel down and vice versa, effectively reversing the scrolling direction on Thinkpad Trackpoints

; Set general environmental settings

#NoEnv
SendMode Input

; Raise HotkeyInterval and MaxHotkeysPerInterval threshhold to trigger a warning message

; Lots of up and down scrolling can trigger a warning message when scrolling exceeds the default MaxHotkeysPerInterval
; The following lines raise the HotKeyInterval from default 2000 ms to 4000 ms and MaxHotkeysPerInterval from 70 to 300

#HotkeyInterval 4000     
#MaxHotkeysPerInterval 300

; The actual scripting that reverses the scrolling.

WheelUp::
 Send {WheelDown}
Return

WheelDown::
 Send {WheelUp}
Return
