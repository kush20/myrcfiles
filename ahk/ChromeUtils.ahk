OpenChrome(link) {
Run "C:\Program Files\Google\Chrome\Application\chrome.exe " link
}


IsChromeActive() {
  if (WinActive("ahk_class Chrome_WidgetWin_1")) {
    MsgBox ( "chrome not active")
  return true
  }
  return false
}

IsTwichActive() {
  if (WinActive("ahk_class Chrome_WidgetWin_1") &&  RegExMatch(WinGetTitle("A"), "Twitch") > 0) {
    return true
  }
  return false
}

IsYoutubeActive() {
  if (WinActive("ahk_class Chrome_WidgetWin_1") &&  RegExMatch(WinGetTitle("A"), "YouTube") > 0) {
    return true
  }
  return false
}

IsPluralSightProbablyActive(){
  if (WinActive("ahk_class Chrome_WidgetWin_1")  &&  RegExMatch(WinGetTitle("A"), "|") > 0) {
  return true
  }
  return false
}

IsUdemyActive(){
  if (WinActive("ahk_class Chrome_WidgetWin_1")  &&  RegExMatch(WinGetTitle("A"), "Course") >= 0) {
  return true
  }
  return false
}

IsTightUdemyActive(){
  if (WinActive("ahk_class Chrome_WidgetWin_1")  &&  RegExMatch(WinGetTitle("A"), "Udemy") > 0) {
  return true
  }
  return false
}
