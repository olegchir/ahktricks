; A system-wide mute toggle for Zoom Meetings.

swapsound()
{
    ; ZPFloatToolbarClass, ZPContentViewWndClass

   ControlSend, ahk_parent, !a, ahk_class ZPContentViewWndClass
}

$XButton1::swapsound()
$XButton1 up::swapsound()

Return