function Get-Me {

Param ([int]$a,[int]$b)
 
$c = $a * $b
 
Write-Output $c
}

function count
{
    BEGIN { $x = 0 }
    PROCESS { $x += 1 }
    END { $x }
}

function product
{
    BEGIN { $x = 1 }
    PROCESS { $x *= $_ }
    END { $x }
}

function sum
{
    BEGIN { $x = 0 }
    PROCESS { $x += $_ }
    END { $x }
}

function average
{
    BEGIN { $max = 0; $curr = 0 }
    PROCESS { $max += $_; $curr += 1 }
    END { $max / $curr }
}

function gdrive {sl 'c:\users\lenovo\google drive\'} 
function functions {sl 'c:\users\lenovo\documents\windowspowershell\modules\functions\'}

function goto {
	param([string]$a)

	# powershell functions
	if($a -eq 'functions' -or $a -eq 'function'){
		sl 'c:\users\lenovo\documents\windowspowershell\modules\functions\'
		return
	}
	# google drive
	if($a -eq 'gdrive'){
		sl 'c:\users\lenovo\google drive\'
		return
	}
	# projects
	if($a -eq 'projects'){
		sl 'c:\users\lenovo\google drive\projects_personal'
		return
	}
}
