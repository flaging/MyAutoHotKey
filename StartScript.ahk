#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetWorkingDir C:\Portable\AHKScript\scrripts\  ; Ensures a consistent starting directory.

loop ,.\*, 0
{
	out := A_LoopFileName
	Run,%out%
}
MsgBox, 0,reminder, All the scripts are started !!
