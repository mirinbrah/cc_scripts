side = "back"

while true do
  term.clear()
  term.setCursorPos(1, 1)

  print("Redstone control")
  print("Type: pass commands")
  write("> ")

  command = read()

  if command == "22307" then
    redstone.setOutput(side, true)
    print("Redstone ON")
    sleep(1)
  end

  if command == "22703" then
    redstone.setOutput(side, false)
    print("Redstone OFF")
    sleep(1)
  end
end