@echo off

:: CONFIG: Optional delay before starting mining client
set start_delay_seconds=3

:: LOAD SAVED CONFIG
if exist config.txt (
	for /f "delims=" %%x in (config.txt) do (set "%%x")
	GOTO START_PROGRAM
)

:: CONFIG: PAW payout address
IF "%payout_address%"=="" (
	set /p payout_address="PAW payout address:"
)

:: SAVE CONFIG
@echo payout_address=%payout_address%>>config.txt


:START_PROGRAM
timeout %start_delay_seconds%
echo Starting DPoW Client...
bin\xmrig.exe -o mining.paw.digital:3333 --rig-id %payout_address% -u %payout_address% -p x

pause
