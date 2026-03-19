echo off
Title "Add Printer"
CLS
echo Select printer to add: 
echo 1. HON3021
echo 2. HON4022
echo 3. HON5022
echo 4. ALL PRINTERS
set /p group="Group Selection (1-4): "

IF "%group%"=="1" start \\usfps7.forest.usf.edu\HON3021
IF "%group%"=="2" start \\usfps7.forest.usf.edu\HON4022
IF "%group%"=="3" start \\usfps7.forest.usf.edu\HON5022
IF "%group%"=="4" (
    start \\usfps7.forest.usf.edu\HON3021
    start \\usfps7.forest.usf.edu\HON4022
    start \\usfps7.forest.usf.edu\HON5022
)

pause