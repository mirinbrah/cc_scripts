password = "244"
side = "back"

while true do
  term.clear()
  term.setCursorPos(1, 1)

  print("Enter password:")
  input = read("*")

  if input == password then
    print("Correct password!")
    print("Redstone ON")

    redstone.setOutput(side, true)
    sleep(5)
    redstone.setOutput(side, false)

    print("Redstone OFF")
    sleep(2)
  else
    print("Wrong password")
    sleep(2)
  end
end