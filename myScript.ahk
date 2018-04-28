;myScript.ahk
;________________________________________________
;------------------------------------------------
;使用说明
;alt+n打开notepad++
;alt+c
;alt+r运行重启管理器
;space+z打开知网
;alt+e打开everything
;alt+. 向上
;alt+, 向下
;alt+f2 打开mathtype
;alt+4 打开matlab2014a
;alt+6 打开matlab2016a
;alt+b 打开matlab2016b
;
;alt+Up/Down/Left/Right 鼠标上、下、左、右移
;alt+
;alt+
;alt+
;alt+
;alt+
;alt+
;win+滚轮 切换虚拟桌面
;{space+b 备份文件到备份盘}
;CapsLock & r 切换到编辑模式或者控制模式，使用jk实现滑轮上升或者下降
;
;
;_______________________________________________
;-----------------------------------------------

FlagAllHotKeys = false
CapsLock & Tab::
FlagAllHotKeys:=!FlagAllHotKeys
return






restartExplore()
{
Run cmd /c taskkill /f /im explorer.exe & start explorer
sleep, 500
SendInput {Ctrl Down}{Shift}
}

Flag:=false  
CapsLock & 1::  
if(Flag:=!Flag ){  
    ToolTip 命令模式,0,0
    SetTimer, RemoveToolTip, 5000  
}else{  
    ToolTip 编辑模式,0,0 ;按键功能不变 
    SetTimer, RemoveToolTip, 5000 
}  
return  




RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return

;命令模式  
#if Flag  
j::click WheelDown  
k::click WheelUp  
u::send ^u  
d::send ^d  
s::send ^s  
#if 
 
#If FlagAllHotKeys
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

Space::SendInput,{Space}
Space & z::Run http://www.cnki.net/
Space & b::Run https://www.baidu.com/baidu?wd=%clipboard%
Space & w::Run https://weibo.com/
Space & s::Run http://shouqu.me/my.html
Space & x::Run https://www.zhihu.com/
Space & d::Run http://www.dlut.edu.cn/
Space & g::Run https://github.com/
#If


