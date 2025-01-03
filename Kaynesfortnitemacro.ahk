Capslock::i          ; caps breaks ahk so if using caps for anything rebind it to i. if i is used change it here also
return

; all of this only works with auto coonfirm edits set to both
; if it is formated as {x down} or {x up} and needs to be changed, just change x keep the up or down suffix

; edit macro
~e::                 ; change this to prefered edit button
send o               ; bind this to building edit, this avoids it breaking if caps is used a build or anything
sleep, 5
Send {l down}        ; bind this to select building edit
keywait, e           ; change this to the same 4 lines up
Send {l up}          ; bind this to select building edit
Return

; reset macro        ; this is single click reset if not using delete this line plus next 5
mbutton::            ; change this to prefered reset button
send, o              ; bind this to building edit
sleep, 5             
send, u              ; bind to reset building edit
return

; less build delay
~lbutton::           ; bind to primary building edit
send {9 down}        ; bind to secondary building edit
keywait, lbutton     ; bind to primary building edit
send {9 up}          ; bind to secondary building edit
return

; dont change
#MaxHotkeysPerInterval 1000
#HotkeyInterval 1