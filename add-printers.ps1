Clear-Host
$Host.UI.RawUI.WindowTitle = "Add Printer"

Write-Host "Select printer to add:"
Write-Host "1. HON3021"
Write-Host "2. HON4022"
Write-Host "3. HON5022"
Write-Host "4. ALL PRINTERS"

$group = Read-Host "Group Selection (1-4)"

switch ($group) {
    "1" { Add-Printer -ConnectionName "\\usfps7.forest.usf.edu\HON3021" }
    "2" { Add-Printer -ConnectionName "\\usfps7.forest.usf.edu\HON4022" }
    "3" { Add-Printer -ConnectionName "\\usfps7.forest.usf.edu\HON5022" }
    "4" {
        Add-Printer -ConnectionName "\\usfps7.forest.usf.edu\HON3021"
        Add-Printer -ConnectionName "\\usfps7.forest.usf.edu\HON4022"
        Add-Printer -ConnectionName "\\usfps7.forest.usf.edu\HON5022"
    }
    Default {
        Write-Host "Invalid selection."
    }
}

Pause
