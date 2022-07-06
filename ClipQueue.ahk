; Contains a sequential clipboard feature. Allows the user to copy multiple things and then paste them sequentially
; rather than copying and then switching and then pasting multiple times.
; UTF-8
; cmd /e:on /c

; Queue based Clipboard for multi-copy and multi-paste
ClipQueue := Array()
StartedPasting := False
ClipSave := ""

^+c::
	ClipSave := ClipboardAll
	if(StartedPasting)
	{
		ClipQueue := []
		StartedPasting := False
	}
	clipboard := ""
	Send ^c
	ClipWait
	ClipQueue.Push(Clipboard)
	TrayTip, % Format("There are now {1} items in Queue", ClipQueue.Count()), % Format("{1}", (ClipQueue[ClipQueue.Count()] != "") ? ClipQueue[ClipQueue.Count()] : "<empty>") , 1, 49
	clipboard := ClipSave
	ClipSave := ""
return

^+v::
	ClipSave := ClipboardAll
	clipboard := ""
	clipboard := ClipQueue.RemoveAt(1)
	ClipWait
	Send ^v
	StartedPasting := True
	TrayTip, % Format("There are now {1} items in Queue", ClipQueue.Count()), % Format("{1}", (ClipQueue[1] != "") ? ClipQueue[1] : "<empty>"), 1, 49
	clipboard := ClipSave
	ClipSave := ""
return