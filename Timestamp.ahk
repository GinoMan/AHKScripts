; Script containing date/time Snippets
; UTF-8
; cmd /e:on /c

::<now>::
	FormatTime, CurrentDateTime,, M/d/yyyy h:mm tt ; It will look like 9/1/2005 3:53 PM
	SendInput %CurrentDateTime%
return

::<today>::
	FormatTime, CurrentDate,, M/d/yyyy
	SendInput %CurrentDate%
return

::<time>::
	FormatTime, CurrentTime,, h:mm tt
	SendInput %CurrentTime%
return