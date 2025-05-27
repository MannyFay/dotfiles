-------------------------------------------------------------------------------
-- Quit Private Apps

tell application "Messages" to quit
tell application "Chat" to quit
tell application "Mail" to quit
tell application "Google Chrome" to quit
tell application "Firefox Developer Edition" to quit


-------------------------------------------------------------------------------
-- Wait for quit to complete

delay 2


-------------------------------------------------------------------------------
-- Start Work Mode

-- Launch browsers with specific profiles:
do shell script "open -na '/Applications/Firefox Developer Edition.app' --args -P VdS -no-remote"
do shell script "open -na '/Applications/Google Chrome.app' --args --profile-directory='Profile 2'"


-------------------------------------------------------------------------------
-- Activate Work Applications

delay 1
tell application "TablePlus" to activate
tell application "Postman" to activate
tell application "Music" to activate
tell application "Microsoft Edge" to activate
tell application "Microsoft Teams" to activate
tell application "Microsoft Outlook" to activate
tell application "Windows App" to activate
-- tell application "Visual Studio Code" to activate


-------------------------------------------------------------------------------
-- Activate 'Work' Focus mode

-- Activate "Work" Focus mode:
tell application "Shortcuts Events"
   run shortcut "Activate Work Focus"
end tell


