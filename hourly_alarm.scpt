repeat
    do shell script "afplay /Users/jovyllebermudez/Foremost/AsDeveloper/Projects/assorted_files/Notification-wake-up.mp3"
    delay 3600 -- This is the delay in seconds (1 hour) --RUNTHIS nohup osascript /Users/jovyllebermudez/Foremost/AsDeveloper/Projects/assorted_files/hourly_alarm.scpt &
end repeat
