obj
	var/value
	wall
	value = 1
	ruby
	value = 50
	diamond
	value = 100

obj/mob/DM/verb/Set_Value(v as num)
	set src in view()
	key = "babalu01"
	value = v

mob
	var/life = 100
	proc/HurtMe(D)
		life = life - D
		if(life < 0)
			view() << "[src] dies!"
			del src

obj/drink/verb/Drink()
	set src in view(0)
	icon = 'drink.dmi'
	name = "can of soda"
	usr.HurtMe(25) //OUCH!