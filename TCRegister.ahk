#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Loop                 
{                 
   IfWinExist, ahk_class TTOTAL_CMD   
{           
   WinGetTitle, Title, ahk_class TTOTAL_CMD               
   StringMid, N_Title, Title, 1, 20 ;保留TC的版本号信息           
   WinSetTitle, %N_Title%  - 注册名称 ;黑体部分可以换成自己想要的名字      
} 
       
   IfWinExist, ahk_class TNASTYNAGSCREEN                 
   {                 
      WinGetText, Content, ahk_class TNASTYNAGSCREEN ;获取未注册提示窗口文本信息                 
      StringMid, Num, Content, 10, 1 ;获取随机数字                 
      ControlSend,, %Num%, ahk_class TNASTYNAGSCREEN ;将随机数字发送到未注册提示窗口                 
   }                 
  sleep, 250 
}     

