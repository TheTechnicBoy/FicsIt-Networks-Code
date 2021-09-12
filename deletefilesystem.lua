function deletefilesystem()
print("The Filesystem will be removed in 5-sec till the high beeps!")
for i=1, 5, 1 do
	event.pull(1)
	print(i .. "...")
	computer.beep(0.7)
end
data = "filesystem.removeFileSystem(".."/dev"..")"
computer.setEEPROM(data)
end
