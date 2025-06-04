^!+1::  vvfast("vvFast") ; Ctrl + Alt + Shift + O
^!+2::  vfast("vfast.. ") ; Ctrl + Alt + Shift + 1
^!+3::  fast("fast ") ; Ctrl + Alt + Shift + 2
^!+4::  med("med med") ; Ctrl + Alt + Shift + 3
^!+5::  slow("slow  ") ; Ctrl + Alt + Shift + 4
^!+6::  vslow("vslow.. ") ; Ctrl + Alt + Shift + 5
^!+7::  vvslow("vvslow.. ") ; Ctrl + Alt + Shift + 6

vvfast(text) {
  Run "pythonw.exe C:\\vvfast.pyw " text
}

vfast(text) {
  Run "pythonw.exe C:\vfast.pyw " text
}

fast(text) {
  Run "pythonw.exe C:\fast.pyw " text
}

med(text) {
  Run "pythonw.exe C:\me\medium.pyw " text
}

slow(text) {
  Run "pythonw.exe C:\slow.pyw " text
}

vslow(text) {
  Run "pythonw.exe C:\vslow.pyw " text

}

vvslow(text) {
  Run "pythonw.exe C:\vvslow.pyw " text
}


^!+.::
Numpad6::
{

  if (isTightUdemyActive()) {
  Send "+{Right}"
  }
  else if (isTwichActive()){
  Send "."
  }
  else if (IsYoutubeActive()){
    Send "{Raw}>"
  }
  else if (IsPluralSightProbablyActive()) {
Send "{Raw}+"
  }
  else  { 

    send "6"

  }
}

Numpad8::
{
Send "{Volume_Up}"
}

Numpad2::
{
Send "{Volume_Down}"
}


^!+,::
Numpad4::
{
if (isTightUdemyActive()){ ; tightest
    Send "+{Left}"
  }
  else if (isTwichActive()){
  Send ","
  }
  else if (IsYoutubeActive()){
Send "{Raw}<"
  }
  else if (IsPluralSightProbablyActive()) {
  Send "{Raw}-"
  }
  else { 
    Send "4"
  }
}


^+r::{
vfast("reload")
Reload  
}
