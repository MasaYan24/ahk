#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook
#UseHook

; vi like key for jis keyboard
vk1C & h::
  if GetKeyState("Shift"){
    Send, +{Left}
    return
  }
  Send, {Left}
  return
vk1C & j::
  if GetKeyState("Shift"){
    Send, +{Down}
    return
  }
  Send, {Down}
  return
vk1C & k::
  if GetKeyState("Shift"){
    Send, +{Up}
    return
  }
  Send, {Up}
  return
vk1C & l::
  if GetKeyState("Shift"){
    Send, +{Right}
    return
  }
  Send, {Right}
  return
vk1C::Send, {vk1C}

vk1D & Tab::AltTab

vk1D & w::
  If (WinActive("ahk_exe WindowsTerminal.exe")){
    Send, +^w
  }else{
    Send, ^w
  }
  return
vk1D & s::Send, ^s
vk1D & a::Send, ^a
vk1D & x::Send, ^x
vk1D & c::Send, ^c
vk1D & v::
  If (WinActive("ahk_exe WindowsTerminal.exe")){
    Send, +^v
  }else{
    Send, ^v
  }
  return
vk1D & z::Send, ^z
vk1D & l::Send, ^l
vk1D & t::
  if (WinActive("ahk_exe WindowsTerminal.exe")){
    Send, +^t
  }else{
    Send, ^t
  }
  return
vk1D & r::Send, ^r
vk1D & f::Send, ^f
vk1C & n::Send, ^n
vk1D & n::Send, ^n
vk1D & /::Send, ^/
vk1C & ,::Send, ^,
vk1D & Enter::Send, ^{Enter}
vk1D & [::
  if GetKeyState("Shift"){
    Send, +^{Tab}
    return
  }
  Send, !{Left}
  return
vk1D & ]::
  if GetKeyState("Shift"){
    Send, ^{Tab}
    return
  }
  Send, !{Right}
  return
vk1D & 1::^1
vk1D & 2::^2
vk1D & 3::^3
vk1D & 4::
  if GetKeyState("Shift"){
    Send, +#s
    return
  }
  Send, ^4
  return
vk1D & 5::^5
vk1D & 6::^6
vk1D & 7::^7
vk1D & 8::^8
vk1D & 9::^9

; window switcher
Tab & vk1D::
  if GetKeyState("Shift"){
    Send, {ShiftAltTab}
    return
  }
  Send, {AltTab}
  return

Tab::Tab


vk1D & Space::Send, {LWin}
vk1C & Space::Send, {RWin}

; window snap
;vk1D & Left::
;  if GetKeyState("Alt"){
;    Send, #{Left}
;    return
;}
;vk1D & Right::
;  if GetKeyState("Alt"){
;    Send, #{Right}
;    return
;}
;vk1D & Up::
;  if GetKeyState("Alt"){
;    Send, #{Up}
;    return
;}
;vk1D & Down::
;  if GetKeyState("Alt"){
;    Send, #{Down}
;    return
;}
vk1D & Left::Send, #{Left}
vk1D & Down::Send, #{Down}
vk1D & Up::Send, #{Up}
vk1D & Right::Send, #{Right}

vk1D::Send, {vk1D}

vk1D & LButton::Send, ^{LButton}

Esc::Send, {Esc}{vk1D}

; JIS → US
+2::Send, @
+6::Send, {^}
+7::Send, {&}
+8::Send, {*}
+9::Send, {(}
+0::Send, {)}
+-::Send, {`_}
^::Send, {`=}
+^::Send, {`+}
@::Send, {[}
+@::Send, {`{}
[::Send, {]}
+[::Send, {`}}
+`;::Send, {`:}
+vkBA::Send, {"}
vkBA::Send, {`'}
vkF3::Send, {``}
vkF4::Send, {``}
+vkF3::Send, {~}
+vkF4::Send,  {~}

;`1234567890-=\[];'],./\
;~!@#$%^&*()_+|{}:"}<>?_