obj
	var/value
	stone
	value = 1
	ruby
	value = 50
	diamond
	value = 100

obj/verb/set_value(v as num)
	set src in view()
	value = v

mob
	var/life = 100
	proc/HurtMe(D)
		life = life - D
		if(life < 0)
			view() << "[src] dies!"
			del src

obj/drink/verb/drink()
	icon = 'drink.dmi'
	name = "can of soda"
	set src in view(0)
	usr.HurtMe(25) //OUCH!