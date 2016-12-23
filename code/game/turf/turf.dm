area/dark
	luminosity = 0

obj/torch
	icon = 'Torch.dmi'
	luminosity = 3
	name = "Torch"

turf
	floor
		icon = 'floor.dmi'
	name = "Floor"

	start
		icon = 'start.dmi'
		name = "Start"

	wall
		icon = 'wall.dmi'
		density = 1
		name = "Wall"

		Iron_Wall
		name = "Iron Wall"

mob
	icon = 'player.dmi'
	name = "Player"
	Login()
		loc = locate(/turf/start)
