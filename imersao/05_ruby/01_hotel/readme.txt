room_35 = Room.new("Room 35", Room::SIMPLE)
room_34 = Room.new("Room 34", Room::MASTER)
room_33 = Room.new("Room 33", Room::DELUXE)

hosting = Hosting.new(room_33, 3)
guest   = Guest.new("Daniel Lopes", hosting)
print guest.invoice