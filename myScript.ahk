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
SwitchIME(dwLayout){
;该函数设定输入法为英语
    HKL:=DllCall("LoadKeyboardLayout", Str, dwLayout, UInt, 1)
    ControlGetFocus,ctl,A
    SendMessage,0x50,0,HKL,%ctl%,A
}

!6::  
Run C:\Program Files\MATLAB\R2016a\bin\matlab,C:\Users\Lee\Desktop\
return

!4::  
Run C:\Program Files (x86)\MATLAB\R2014a32\bin\matlab,C:\Users\Lee\Desktop\
return

;!b::  
;Run C:\Program Files\MATLAB\R2016b\bin\matlab,C:\Users\Lee\Desktop\
;return
!b::run C:\Portable\BatchRun.ffs_batch

!c::
return

!r::
SwitchIME(0x04090409)
Run cmd /c taskkill /f /im explorer.exe & start explorer
sleep, 500
send {Ctrl Down}{Shift}
return

Flag:=false  
CapsLock & r::  
if(Flag:=!Flag ){  
    ToolTip 命令模式,400,0  
}else{  
    ToolTip 编辑模式,400,0 ;按键功能不变  
}  
return  
  
;命令模式  
#if Flag  
j::click wheeldown  
k::click wheelup  
u::send ^u  
d::send ^d  
s::send ^s  
#if  



!e::
run C:\Program Files\Everything\Everything
return

!.::
click wheeldown
return
!,::
click wheelup
return

!d::
d =  %A_YYYY%%A_MM%%A_DD%
;获得系统时间比如今天的日期：2011-09-16
Send %d%
return

!t::
d = %A_Hour%:%A_Min%:%A_Sec%
;获得系统时间比如今天的时间：18:30:33。
Send %d%
return

!WheelUp::
send ^#{Left}
sleep ,200
return

!WheelDown::
send ^#{Right}
sleep ,200
return

!Up:: Send #^{d}
; #按 Alt + ↑ 新建虚拟桌面
!Down:: Send #^{F4}
; #按 Alt + ↓ 关闭虚拟桌面
!Left:: Send #^{Left}
; #按 Alt + ← 切换到左侧虚拟桌面
!Right:: Send #^{Right}
; #按 Alt + → 切换到右侧虚拟桌面

;!Up::
;MouseMove,0,-20,0,R
; 按 Alt →　切换到右侧虚拟桌面；　按　Ａｌｔ　← 切换到左侧虚拟桌面
;return

;!Down::
;MouseMove,0,20,0,R
;return

;!Left::
;MouseMove,-20,0,0,R
;return

;!Right::
;MouseMove,20,0,,R
;return

!Enter::
click
return

Space::SendInput,{Space}
Space & z::Run http://www.cnki.net/
Space & b::Run https://www.baidu.com/baidu?wd=%clipboard%
Space & w::Run https://weibo.com/
Space & s::Run http://shouqu.me/my.html
Space & x::Run https://www.zhihu.com/
Space & d::Run http://www.dlut.edu.cn/
Space & g::Run https://github.com/


