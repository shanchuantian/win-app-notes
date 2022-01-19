;Alt+h ;上页翻页键映射 
!;::Send {PgUp} 
!'::Send {PgDn}

;Alt+u o  HOME END键映射 
!u:: Send {Home} 
!y:: Send +{Home} 
!i:: Send {End} 

;Alt + jkli 实现对方向键的映射,写代码的时候灰常有用 
!h:: Send {left} 
!l:: Send {right} 
!k:: Send {up} 
!j:: Send {down} 

;Alt+d f Delete Backspace的映射 
!f::Send {Backspace} 
!d::Send {Delete} 

;选择文字 alt+,：向左连续选择一个单词， alt+.：向右连续选择一个单词， alt+y:向前选中到行首，alt+p:向后选中到行尾
!,::Send ^+{Left}
!.::Send ^+{Right}

;复制粘贴alt+c/v/z
!c::Send ^c
!v::Send ^v
!z::Send ^z
;插入时间
^;::
ClipTemp = %Clipboard%
FormatTime , Clipboard , , HH':'mm
Send ^v
Sleep 100
Clipboard = %ClipTemp%
Return