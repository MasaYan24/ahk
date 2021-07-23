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
;  if GetKeyState("Shift"){
;    AltTab
;    return
;  }
;  Send, {AltTab}
;  return

vk1D & w::Send, ^w
vk1D & s::Send, ^s
vk1D & a::Send, ^a
vk1D & x::Send, ^x
vk1D & c::Send, ^c
vk1D & v::Send, ^v
vk1D & z::Send, ^z
vk1D & l::Send, ^l
vk1D & t::Send, ^t
vk1D & r::Send, ^r
vk1C & n::Send, ^n
vk1D & n::Send, ^n

Tab & vk1D::
  if GetKeyState("Shift"){
    Send, +AltTab
    return
  }
  Send, AltTab
  return

vk1D & Space::Send, {LWin}
vk1C & Space::Send, {RWin}

vk1D & Left::Send, #{Left}
vk1D & Down::Send, #{Down}
vk1D & Up::Send, #{Up}
vk1D & Right::Send, #{Right}

vk1D & 4::
  if GetKeyState("Shift"){
    Send, +#s
    return
  }
  return

vk1D::Send, {vk1D}

vk1D & LButton::Send, ^{LButton}

Esc::Send, {Esc}{vk1D}

; vi like key for apple us keyboard
;>#h::Send {Left}
;>#j::Send, {Down}
;>#k::Send, {Up}
;>#l::Send, {Right}
;+>#h::Send +{Left}
;+>#j::Send, +{Down}
;+>#k::Send, +{Up}
;+>#l::Send, +{Right}
;<#w::Send, ^w
;<#s::Send, ^s
;<#a::Send, ^a
;<#x::Send, ^x
;<#c::Send, ^c
;<#v::Send, ^v
;<#z::Send, ^z
;<#l::Send, ^l
;>#n::Send, ^n
;<#n::Send, ^n
