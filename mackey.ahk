
; 新建一份文本，修改名称为Remap.ahk


; >>>>>>>>>>>>>>>>>>;
; >>>>>>输入法切换>>>>>;
; >>>>>>>>>>>>>>>>>>;

; 输入法/大小写切换
CapsLock::
KeyWait, CapsLock, T0.3
If ErrorLevel {
    SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
    KeyWait, CapsLock
} else {
    SetCapsLockState, % "Off"
    SendInput {LCtrl down}{Space}{LCtrl up}
}
Return

; 屏蔽输入法切换
LAlt & LShift:: Return
LShift & LAlt:: Return

; >>>>>>>>>>>>>>>>>>;
; >>>>>>键位映射>>>>>>;
; >>>>>>>>>>>>>>>>>>;

; 屏蔽左Alt
LAlt:: Return

; 左Win换成左LAlt
LWin:: LAlt

; 替换菜单键为Win
AppsKey:: LWin


; >>>>>>>>>>>>>>>>>>;
; >>>>>特殊快捷键>>>>>>;
; >>>>>>>>>>>>>>>>>>;

; 左Alt + 方向上键 = 上一页
LAlt & Up:: SendInput {PgUp}

; 左Alt + 方向下键 = 下一页
LAlt & Down:: SendInput {PgDn}

; 左Alt + 方向左键 = Home（光标移到行首）
LAlt & Left:: SendInput {Home}

; 左Alt + 方向右键 = End（光标移到行尾）
LAlt & Right:: SendInput {End}

; 按住左Alt + 左shift + 方向左 = 向左选中到行首
#IF GetKeyState("LAlt", "P")
LShift & Left::  SendInput {LShift down}{Home}{LShift up}

; 按住左Alt + 左shift + 方向右 = 向右选中到行尾
#IF GetKeyState("LAlt", "P")
LShift & Right::  SendInput {LShift down}{End}{LShift up}

; 左Alt + [ = 后退
LAlt & [:: SendInput {LAlt down}{Left}{LAlt down}

; 左Alt + ] = 前进
LAlt & ]:: SendInput {LAlt down}{Right}{LAlt up)


; >>>>>>>>>>>>>>>>>>;
; >>>>>常用快捷键>>>>>>;
; >>>>>>>>>>>>>>>>>>;

; 左Alt + x = 剪贴
LAlt & x:: SendInput ^{x}

; 左Alt +c = 复制
LAlt & c:: SendInput ^{c}

; 左Alt +v = 粘贴
LAlt & v:: SendInput ^{v}

; 左Alt +a = 全选
LAlt & a:: SendInput ^{a}

; 左Alt +z = 取消
LAlt & z:: SendInput ^{z}

; 左Alt +s = 保存
LAlt & s:: SendInput ^{s}

; 左Alt +o = 打开
LAlt & o:: SendInput ^{o}

; 左Alt +n = 新建
LAlt & n:: SendInput ^{n}

; 左Alt +f = 搜索
LAlt & f:: SendInput ^{f}

; >>>>>>>>>>>>>>>>>>;
; >>>>>所有快捷键 >>>>>>;
; >>>>(除上面常用键)>>>>>;
; >>>>>>>>>>>>>>>>>>;

LAlt & q:: SendInput ^{q}
LAlt & w:: SendInput ^{w}
LAlt & e:: SendInput ^{e}
LAlt & r:: SendInput ^{r}
LAlt & t:: SendInput ^{t}
LAlt & y:: SendInput ^{y}
LAlt & u:: SendInput ^{u}
LAlt & i:: SendInput ^{i}
LAlt & p:: SendInput ^{p}
LAlt & d:: SendInput ^{d}
LAlt & g:: SendInput ^{g}
LAlt & h:: SendInput ^{h}
LAlt & j:: SendInput ^{j}
LAlt & k:: SendInput ^{k}
LAlt & l:: SendInput ^{l}
LAlt & b:: SendInput ^{b}
LAlt & m:: SendInput ^{m}
LAlt & f1:: SendInput ^{f1}
LAlt & f2:: SendInput ^{f2}
LAlt & f3:: SendInput ^{f3}
LAlt & f4:: SendInput ^{f4}
LAlt & f5:: SendInput ^{f5}
LAlt & f6:: SendInput ^{f6}
LAlt & f7:: SendInput ^{f7}
LAlt & f8:: SendInput ^{f8}
LAlt & f9:: SendInput ^{f9}
LAlt & 0:: SendInput ^{0}
LAlt & 1:: SendInput ^{1}
LAlt & 2:: SendInput ^{2}
LAlt & 3:: SendInput ^{3}
LAlt & 4:: SendInput ^{4}
LAlt & 5:: SendInput ^{5}
LAlt & 6:: SendInput ^{6}
LAlt & 7:: SendInput ^{7}
LAlt & 8:: SendInput ^{8}
LAlt & 9:: SendInput ^{9}