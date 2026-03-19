Clear-Host
$Host.UI.RawUI.WindowTitle = "Add Printer"

$printers = @{
    "1" = "HON3021"
    "2" = "HON4022"
    "3" = "HON5022"
}

Write-Host "Select printer to add:"
$printers.GetEnumerator() | ForEach-Object {
    Write-Host "$($_.Key). $($_.Value)"
}
Write-Host "4. ALL PRINTERS"

$group = Read-Host "Group Selection (1-4)"

function Add-NetworkPrinter ($name) {
    Add-Printer -ConnectionName "\\usfps7.forest.usf.edu\$name"
}

if ($group -eq "4") {
    $printers.Values | ForEach-Object { Add-NetworkPrinter $_ }
}
elseif ($printers.ContainsKey($group)) {
    Add-NetworkPrinter $printers[$group]
}
else {
    Write-Host "Invalid selection."
}

Pause