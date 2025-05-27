-------------------------------------------------------------------------------
-- Quit Work Apps

tell application "Microsoft Teams" to quit
tell application "Microsoft Outlook" to quit
tell application "Microsoft Edge" to quit
tell application "Visual Studio Code" to quit
tell application "Windows App" to quit
tell application "TablePlus" to quit
tell application "Postman" to quit
tell application "Google Chrome" to quit
tell application "Firefox Developer Edition" to quit


-------------------------------------------------------------------------------
-- Wait for quit to complete

delay 2


-------------------------------------------------------------------------------
-- Start Private Mode

-- Launch browsers with specific profiles:
do shell script "open -na '/Applications/Firefox Developer Edition.app' --args -P Private -no-remote"
do shell script "open -na '/Applications/Google Chrome.app' --args --profile-directory='Profile 1'"

-- Activate Private Applications:
delay 1
-- tell application "OBSBOT Center" to activate
tell application "Mail" to activate
tell application "Music" to activate
tell application "Messages" to activate

-- Activate "Private" Focus mode:
tell application "Shortcuts Events"
   run shortcut "Activate Private Focus"
end tell


