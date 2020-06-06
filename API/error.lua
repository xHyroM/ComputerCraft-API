os.loadAPI("/API/api.lua")

function doErrorTrap(fCall)
	result = {pcall(fCall)}
	if not result[1] then
		term.setBackgroundColor(colors.blue)
		term.clear()
		term.setCursorPos(24,2)
		term.setBackgroundColor(colors.lightGray)
		term.setTextColor(colors.blue)
		print("BSOD")
		term.setCursorPos(4,4)
		term.setBackgroundColor(colors.blue)
		term.setTextColor(colors.white)
		print("An error has occurred. To continue:")
		term.setCursorPos(4,6)
		print("Press Enter to return to CraftOS, or")
		term.setCursorPos(4,8)
		print("Press CTRL+R to restart your computer.")
		term.setCursorPos(4,9)
		print("If you do this, you will lose any unsaved")
		term.setCursorPos(4,10)
		print("information in all open applications.")
		term.setCursorPos(4,12)
		print("Error: ")
		term.setCursorPos(4,13)
		print(result[2])
		term.setCursorPos(12,16)
		write("Press any key to continue ")
		while true do
            local event = {os.pullEvent()}
            if event[1] == "key" then
		os.reboot()
                break
            end
        end
	end
end