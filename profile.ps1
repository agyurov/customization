ipmo c:\users\lenovo\documents\WindowsPowerShell\Modules\functions\functions.psm1
function subl {& sublime $1 -new_console:s}
function ntp {& notepad $1 -new_console:s}
function editorx { param([string] $x, [string] $y = 's')& $y $x $1 -new_console:s}
function editor { param([string] $x, [string] $y = 's')
			if($y -eq 's'){$y = 'sublime'}
			if($y -eq 'n'){$y = 'notepad'}
			if($x -eq 's'){
				$y = 'sublime'
				$x = $Null
			}
			if($x -eq 'n'){
				$y = 'notepad'
				$x = $Null
			}
			& $y $x $1 -new_console:s
		}
function boss {
	& sublime $1 -new_console
	& PowerShell -ExecutionPolicy Bypass -NoLogo -NoExit -Command "Invoke-Expression '. ''%ConEmuDir%\..\profile.ps1'''" -new_console:s -new_console:d:"C:"
}