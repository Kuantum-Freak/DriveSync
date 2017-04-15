echo. >> "I:\OEM\SyncToy_temp.log"
echo. >> "I:\OEM\SyncToy_temp.log"
echo. >> "I:\OEM\SyncToy_temp.log"
set dt=%date:~7,2%-%date:~4,2%-%date:~10,4%_%time:~,8%
echo %dt% >> "I:\OEM\SyncToy_temp.log"
"C:\Program Files\SyncToy 2.1\SyncToyCmd.exe" -r I-DSK-SYNC >> "I:\OEM\SyncToy_temp.log"

type "I:\OEM\SyncToy.log" >> "I:\OEM\SyncToy_temp.log"

type "I:\OEM\SyncToy_temp.log" > "I:\OEM\SyncToy.log"

del "I:\OEM\SyncToy_temp.log"

exit