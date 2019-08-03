SetTitleMatchMode, 2

identify()
initiate()

F1::playpause()

F2::activateeditor()
F3::activateplayer()

F4::pauseandedit()
F5::playandwatch()

F6::rewind()
F7::replay5()
F8::forward()

; F9::volumedown()
; F10::volumeup()

F9::Send, Vladimir: 
F10::Send, Vitaliy: 
F11::Send, Alexey: 
F12::Send, Mourice: 

;F12::debugall()

debugall() 
{
    global PlayerWindow
    global EditorWindow
    MsgBox %PlayerWindow% and %EditorWindow%
}

identify()
{
    global PlayerWindow
    global EditorWindow
    WinGet, PlayerWindow, ID, VLC media player
    WinGet, EditorWindow, ID, Visual Studio Code
}

activateeditor()
{
    global EditorWindow
    WinActivate, ahk_id %EditorWindow%
}

activateplayer()
{
    global PlayerWindow
    WinActivate, ahk_id %PlayerWindow%
}

pauseonly()
{
    global PlayerWindow
    ControlSend,,<+k, ahk_id %PlayerWindow%
}

playonly()
{
    global PlayerWindow
    ControlSend,,<+u, ahk_id %PlayerWindow%
}

playpause()
{
    global PlayerWindow
    ControlSend,,{space}, ahk_id %PlayerWindow%
}

stop()
{
    global PlayerWindow
    ControlSend,,{space}, ahk_id %PlayerWindow%
}

start()
{
    global PlayerWindow
    ControlSend,,p, ahk_id %PlayerWindow%
}

rewind()
{
    global PlayerWindow
    ControlSend,,<+{left}, ahk_id %PlayerWindow%
}

forward()
{
    global PlayerWindow
    ControlSend,,<+{right}, ahk_id %PlayerWindow%
}

volumedown()
{
    global PlayerWindow
    ControlSend,,^{down}, ahk_id %PlayerWindow%
}

volumeup()
{
    global PlayerWindow
    ControlSend,,^{up}, ahk_id %PlayerWindow%
}

ips()
{
    global PlayerWindow
    ControlSend,,], ahk_id %PlayerWindow%
}

dps()
{
    global PlayerWindow
    ControlSend,,[, ahk_id %PlayerWindow%
}

nps()
{
    global PlayerWindow
    ControlSend,,=, ahk_id %PlayerWindow%
}

printscreen()
{
    global PlayerWindow
    ControlSend,,+s, ahk_id %PlayerWindow%
}

initiate(){
    playpause()
    playpause()
    playonly()
    pauseonly()
}

replay5() {
    rewind()
    playonly()
    sleep 5000
    pauseonly()
}

pauseandedit()
{ 
    pauseonly()
    activateeditor()
}

playandwatch()
{
    activateplayer()
    playonly()
}