v:="1.0.1"
While, !A_IsAdmin
{
    Try 
    {
        Run *RunAs, "%A_ScriptFullPath%",/restart  
    }
    ExitApp
}
ToolTip 版本：%v%,100,0
SetTimer, RemoveToolTip, 5000
;MsgBox, 0x40, 脚本启动, 版本：%v%, 2
EnableHotKeysFlag = True

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


;functions
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
!Enter::click
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
!4::Run C:\Program Files (x86)\MATLAB\R2014a32\bin\matlab,C:\Users\Lee\Desktop\
!b::run C:\Portable\BatchRun.ffs_batch
m & 6::Run C:\Program Files\MATLAB\R2016a\bin\matlab,C:\Users\Lee\Desktop\
m & 4::Run C:\Program Files (x86)\MATLAB\R2014a32\bin\matlab,C:\Users\Lee\Desktop\


Space::SendInput,{Space}
Space & z::Run http://www.cnki.net/
Space & b::Run https://www.baidu.com/
Space & t::Run http://dict.youdao.com/w/eng/%clipboard%
Space & w::Run https://weibo.com/
Space & s::Run http://shouqu.me/my.html
Space & x::Run https://www.zhihu.com/
Space & d::Run http://www.dlut.edu.cn/
Space & g::Run https://github.com/
#If


