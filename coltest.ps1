# The test text
$T = "gYw"
$Esc=[char]0x1b

Write-Output ""
Write-Output "                 40m     41m     42m     43m     44m     45m     46m     47m"

# Foreground color codes
$FGs = @("    m", "   1m", "  30m", "1;30m", "  31m", "1;31m", "  32m", "1;32m", "  33m", "1;33m", "  34m", "1;34m", "  35m", "1;35m", "  36m", "1;36m", "  37m", "1;37m")

# Background color codes
$BGs = @("40m", "41m", "42m", "43m", "44m", "45m", "46m", "47m")

foreach ($FGsItem in $FGs) {
    $FG = $FGsItem.Trim() 
    $txt = ""
    $txt = $txt + " $FGsItem $Esc[$FG  $T  "
    foreach ($BG in $BGs) {
        $txt = $txt + " $Esc[0m$Esc[$FG$Esc[$BG  $T  $Esc[0m"
    }
    Write-Output $txt 
}
Write-Output ""