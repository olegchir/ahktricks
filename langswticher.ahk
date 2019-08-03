; https://autohotkey.com/docs/KeyList.htm

SetCapsLockState, AlwaysOff
+CapsLock::CapsLock

CapsLock::Send, {LWin down}{Space down}{Space up}{LWin up}{LWin up}

return