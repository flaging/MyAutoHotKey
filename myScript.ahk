v:="1.0.1"
;While, !A_IsAdmin
;{
;    Try 
;    {
;       Run *RunAs, "%A_ScriptFullPath%",/restart  
;   }
;    ExitApp
;}
ToolTip 版本：%v%,100,0
SetTimer, RemoveToolTip, 5000
;MsgBox, 0x40, 脚本启动, 版本：%v%, 2
EnableHotKeysFlag = True
AppEnableFlag = False

CapsLock & Tab::Reload
;FlagAllHotKeys:=!FlagAllHotKeys

CapsLock & 1::
    Flag:=!Flag
    if Flag=1
    {  
    ToolTip 命令模式,0,0
    SetTimer, RemoveToolTip, 5000
    }
    return

CapsLock & 2::
    Flag:=!Flag
    if Flag=0
    {  
    ToolTip 编辑模式,0,0
    SetTimer, RemoveToolTip, 5000
    }
    return

CapsLock & 3::
    AppEnableFlag:= !AppEnableFlag
    if AppEnableFlag=1
    {  
    ToolTip App模式,0,0
    SetTimer, RemoveToolTip, 5000
    }
    return


;functions
SendText(var_string){
;      local
      SendInput {text}%var_string%
      return
  }
restartExplore()
{
Run cmd /c taskkill /f /im explorer.exe & start explorer
sleep, 500
SendInput {Ctrl Down}{Shift}
}

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return

Flag:=false  
 






;命令模式  
#if Flag  
j::click WheelDown  
k::click WheelUp  
u::send ^u  
d::send ^d  
s::send ^s  
#if 
 
#If EnableHotKeysFlag
!r::restartExplore()
#!Enter::click
!e::run C:\Program Files\Everything\Everything
!.::click wheeldown
!,::click wheelup
!d::Send %A_YYYY%%A_MM%%A_DD% ;获得系统时间比如今天的日期：2011-09-16
!t::Send %A_Hour%:%A_Min%:%A_Sec% ;获得系统时间比如今天的时间：18:30:33。
!WheelUp::send ^#{Left}
!WheelDown::send ^#{Right}
!Up:: Send #^{d} ; #按 Alt + ↑ 新建虚拟桌面
!Down:: Send #^{F4} ; #按 Alt + ↓ 关闭虚拟桌面
!Left:: Send #^{Left} ; #按 Alt + ← 切换到左侧虚拟桌面
!Right:: Send #^{Right}  ; #按 Alt + → 切换到右侧虚拟桌面
!6::Run C:\Program Files\MATLAB\R2016a\bin\matlab,C:\Users\Lee\Desktop\
!4::Run D:\Program Files (x86)\MATLAB\R2014a\bin\matlab,C:\Users\Lee\Desktop\
!b::run C:\Portable\BatchRun.ffs_batch
!7::Run C:\Program Files\MATLAB\R2016b\bin\matlab,D:\Users\Lee\Desktop\
!8::Run C:\Program Files\MATLAB\R2018a\bin\matlab,C:\Users\Lee\Desktop\
; #e::
; run "C:\Program Files\totalcmd\TOTALCMD.EXE" 
;  sleep, 1000      
; IfWinExist, ahk_class TNASTYNAGSCREEN                 
; {                 
;     WinGetText, Content, ahk_class TNASTYNAGSCREEN ;获取未注册提示窗口文本信息                 
;     StringMid, Num, Content, 10, 1 ;获取随机数字                 
;     ControlSend,, %Num%, ahk_class TNASTYNAGSCREEN ;将随机数字发送到未注册提示窗口                 
; }                 
; sleep, 250
; return 



Tab::SendInput,{Tab}
Tab & z::Run http://www.cnki.net/
Tab & b::Run https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&tn=monline_4_dg&wd=%clipboard%
Tab & t::Run http://dict.youdao.com/w/eng/%clipboard%
Tab & w::Run https://weibo.com/
Tab & s::Run http://shouqu.me/my.html
Tab & x::Run https://www.zhihu.com/
Tab & d::Run http://www.dlut.edu.cn/
Tab & g::Run https://github.com/
Tab & q::
SendText("lyp@9409")
Send {Enter}
return
#If

;#If, AppEnableFlag
;m::m
;m & 6::Run C:\Program Files\MATLAB\R2016a\bin\matlab,C:\Users\Lee\Desktop\
;m & 4::Run C:\Program Files (x86)\MATLAB\R2014a32\bin\matlab,C:\Users\Lee\Desktop\
;#If

;Alt+X 调出
!X::
;获取当前日期时间并保存到剪贴板
d = @Lee %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec%
clipboard = %d%
;打开文本文档
Run C:\Users\Lee\Desktop\Update.txt
;打开需要一定时间，所以停顿一下
sleep,1000
;复制当前日期时间
Send ^v
;换行
Send {Enter}
Return


