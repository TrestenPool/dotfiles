#Requires AutoHotkey v2.0

;#SETUP START
#SingleInstance force
ListLines 0
SendMode "Input"
SetWorkingDir A_ScriptDir
KeyHistory 0
#WinActivateForce
ProcessSetPriority "H"
SetWinDelay -1
SetControlDelay -1

; import the VDM.ahk file which contains the IVirtualDesktopManager COM interface
#Include %A_ScriptDir%\VD\VD.ah2

; global window id's
global SelectedWindowID1 := 0
global SelectedWindowID2 := 0
global SelectedWindowID3 := 0
global SelectedWindowID4 := 0
global SelectedWindowID5 := 0

!1:: {
  global SelectedWindowID1
  SelectedWindowID1 := WinGetID("A") ; Active window
  SoundBeep(250, 800) ; Higher pitch, half a second
  ToolTip("Selected Window: " WinGetProcessName(SelectedWindowID1))
  SetTimer(() => ToolTip(), -1000)  ; Auto-hide after 1 second
  ; TrayTip("Selected Window", WinGetTitle(SelectedWindowID), "Iconi Mute")
}

!2:: {
  global SelectedWindowID2
  SelectedWindowID2 := WinGetID("A") ; Active window
  SoundBeep(250, 800) ; Higher pitch, half a second
  ToolTip("Selected Window: " WinGetProcessName(SelectedWindowID2))
  SetTimer(() => ToolTip(), -1000)  ; Auto-hide after 1 second
}

!3:: {
  global SelectedWindowID3
  SelectedWindowID3 := WinGetID("A") ; Active window
  SoundBeep(250, 800) ; Higher pitch, half a second
  ToolTip("Selected Window: " WinGetProcessName(SelectedWindowID3))
  SetTimer(() => ToolTip(), -1000)  ; Auto-hide after 1 second
}

!4:: {
  global SelectedWindowID4
  SelectedWindowID4 := WinGetID("A") ; Active window
  SoundBeep(250, 800) ; Higher pitch, half a second
  ToolTip("Selected Window: " WinGetProcessName(SelectedWindowID4))
  SetTimer(() => ToolTip(), -1000)  ; Auto-hide after 1 second
}

!5:: {
  global SelectedWindowID5
  SelectedWindowID5 := WinGetID("A") ; Active window
  SoundBeep(250, 800) ; Higher pitch, half a second
  ToolTip("Selected Window: " WinGetProcessName(SelectedWindowID5))
  SetTimer(() => ToolTip(), -1000)  ; Auto-hide after 1 second
}

^1:: {
  global SelectedWindowID1
  if (SelectedWindowID1 != 0) {

    ; check if the window is already on the current desktop
    if (VD.getDesktopNumOfWindow("ahk_id " SelectedWindowID1) == VD.getCurrentDesktopNum()) {

      ; check if the window is the active window
      if (WinActive("ahk_id " SelectedWindowID1)) {
        ; minimize the window
        WinMinimize("ahk_id " SelectedWindowID1)
        return
      } else {
        ; activate the window
        WinActivate("ahk_id " SelectedWindowID1)
        return
      }

    }

    VD.MoveWindowToCurrentDesktop(SelectedWindowID1)
    ; SoundBeep(1000, 800) ; Higher pitch, shorter duration
    ; ToolTip("Moved Window: " WinGetProcessName(SelectedWindowID1))
    ; SetTimer(() => ToolTip(), -1000)  ; Auto-hide after 1 second
  } else {
    MsgBox("No window selected. Press Alt+1 to select a window first.")
  }
}

^2:: {
  global SelectedWindowID2
  if (SelectedWindowID2 != 0) {

    ; check if the window is already on the current desktop
    if (VD.getDesktopNumOfWindow("ahk_id " SelectedWindowID2) == VD.getCurrentDesktopNum()) {

      ; check if the window is the active window
      if (WinActive("ahk_id " SelectedWindowID2)) {
        ; minimize the window
        WinMinimize("ahk_id " SelectedWindowID2)
        return
      } else {
        ; activate the window
        WinActivate("ahk_id " SelectedWindowID2)
        return
      }

    }

    VD.MoveWindowToCurrentDesktop(SelectedWindowID2)
    ; SoundBeep(1000, 800) ; Higher pitch, shorter duration
    ; ToolTip("Moved Window: " WinGetProcessName(SelectedWindowID2))
    ; SetTimer(() => ToolTip(), -1000)  ; Auto-hide after 1 second
  } else {
    MsgBox("No window selected. Press Alt+2 to select a window first.")
  }
}

^3:: {
  global SelectedWindowID3
  if (SelectedWindowID3 != 0) {

    ; check if the window is already on the current desktop
    if (VD.getDesktopNumOfWindow("ahk_id " SelectedWindowID3) == VD.getCurrentDesktopNum()) {

      ; check if the window is the active window
      if (WinActive("ahk_id " SelectedWindowID3)) {
        ; minimize the window
        WinMinimize("ahk_id " SelectedWindowID3)
        return
      } else {
        ; activate the window
        WinActivate("ahk_id " SelectedWindowID3)
        return
      }

    }
    VD.MoveWindowToCurrentDesktop(SelectedWindowID3)
  } else {
    MsgBox("No window selected. Press Alt+3 to select a window first.")
  }
}

^4:: {
  global SelectedWindowID4
  if (SelectedWindowID4 != 0) {

    ; check if the window is already on the current desktop
    if (VD.getDesktopNumOfWindow("ahk_id " SelectedWindowID4) == VD.getCurrentDesktopNum()) {

      ; check if the window is the active window
      if (WinActive("ahk_id " SelectedWindowID4)) {
        ; minimize the window
        WinMinimize("ahk_id " SelectedWindowID4)
        return
      } else {
        ; activate the window
        WinActivate("ahk_id " SelectedWindowID4)
        return
      }

    }
    VD.MoveWindowToCurrentDesktop(SelectedWindowID4)
  } else {
    MsgBox("No window selected. Press Alt+4 to select a window first.")
  }
}

^5:: {
  global SelectedWindowID5
  if (SelectedWindowID5 != 0) {

    ; check if the window is already on the current desktop
    if (VD.getDesktopNumOfWindow("ahk_id " SelectedWindowID5) == VD.getCurrentDesktopNum()) {

      ; check if the window is the active window
      if (WinActive("ahk_id " SelectedWindowID5)) {
        ; minimize the window
        WinMinimize("ahk_id " SelectedWindowID5)
        return
      } else {
        ; activate the window
        WinActivate("ahk_id " SelectedWindowID5)
        return
      }

    }
    VD.MoveWindowToCurrentDesktop(SelectedWindowID5)
  } else {
    MsgBox("No window selected. Press Alt+5 to select a window first.")
  }
}

; Create a hotkey to show all of the Selected Window IDs and their titles for debugging purposes
!0:: {
  global SelectedWindowID1, SelectedWindowID2, SelectedWindowID3, SelectedWindowID4, SelectedWindowID5
  info := "1: " (SelectedWindowID1 != 0 ? WinGetProcessName(SelectedWindowID1) : "None") "`n"
  info .= "2: " (SelectedWindowID2 != 0 ? WinGetProcessName(SelectedWindowID2) : "None") "`n"
  info .= "3: " (SelectedWindowID3 != 0 ? WinGetProcessName(SelectedWindowID3) : "None") "`n"
  info .= "4: " (SelectedWindowID4 != 0 ? WinGetProcessName(SelectedWindowID4) : "None") "`n"
  info .= "5: " (SelectedWindowID5 != 0 ? WinGetProcessName(SelectedWindowID5) : "None")
  MsgBox(info)
}

^+F1:: {
    Run '"C:\Users\TrestenPool\AppData\Local\Programs\Microsoft VS Code\Code.exe" -n "C:\Users\TrestenPool\OneDrive - NinjaOne\Documents\PowerShell"'
}

myGui := Gui()
myGui.SetFont("s12", "Segoe UI")
explanation := "
(
Hotkeys:
Alt + 1: Select the active window to be moved later
Alt + 2: Select the active window to be moved later
Alt + 3: Select the active window to be moved later
Alt + 4: Select the active window to be moved later
Alt + 5: Select the active window to be moved later
Win + 1: Move the selected window from Alt + 1 to the current desktop
Win + 2: Move the selected window from Alt + 2 to the current desktop
Win + 3: Move the selected window from Alt + 3 to the current desktop
Win + 4: Move the selected window from Alt + 4 to the current desktop
Win + 5: Move the selected window from Alt + 5 to the current desktop
)"
Explanation_Edit := myGui.Add("Edit", "-vscroll -E0x200", explanation) ; https://www.autohotkey.com/boards/viewtopic.php?t=3956#p21359
; Deselect edit text by moving caret to start
PostMessage(0xB1, 0, 0, , "ahk_id " Explanation_Edit.hwnd)
myGui.Title := "Move Main Window Example"
; myGui.Show()
