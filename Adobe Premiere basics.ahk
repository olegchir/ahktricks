#IfWinActive Adobe Premiere Pro

; https://www.reddit.com/r/premiere/comments/6wphcs/help_grab_move_pan_the_timeline_instead_of_mouse/

MButton:: 
Send,{h}{LButton Down}
KeyWait, MButton
Send, {LButton Up}{v}

Return