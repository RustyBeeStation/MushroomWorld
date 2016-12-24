mob
	verb
		say(msg as text)
			world << "[usr] says, [msg]"
		smile()
			world << "[usr] grins."
		giggle()
			world << "[usr] giggles."
		cry()
			world << "[usr] cries \his heart out."
		version()
			world << "[world]Version: 0.2.2: It's not just a game changer, IT'S A NAME CHANGER! FLIGHTPACK PATCH 2"
		set_name(N as text)
			set desc = "(\"new name\") Change your name."
			name = N
		wink(M as mob)
			view() << "[usr] winks at [M]."

mob/DM/wink(M as mob)
	set desc = "This kills people, so be careful!"
	..()
	del M //poof!
