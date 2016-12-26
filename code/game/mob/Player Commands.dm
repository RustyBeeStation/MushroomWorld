mob
	verb
		Say(msg as text)
			world << "[usr] says, [msg]"
		Smile()
			world << "[usr] Grins."
		Giggle()
			world << "[usr] Giggles."
		Cry()
			world << "[usr] Cries \his heart out."
		Version()
			world << "[world]Version: 0.5.0: The best one yet! (Bug fixes and Optimisations) FLIGHTPACK PATCH 5"
		Set_Name(N as text)
			set desc = "(\"new name\") Change your name."
			name = N
