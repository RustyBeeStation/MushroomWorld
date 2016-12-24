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

obj/disguise
	verb/wear()
		usr.icon = icon //zing!

obj/magic_paper
	var/global/msg
	verb
	write(txt as text)
	msg = txt
	read()
	usr << "[src] says, ’[msg]’"

mob
	var/life = 100
	proc/HurtMe(D)
	life = life - D
	if(life < 0)
	view() << "[src] dies!"
	del src

obj/poison
	name = "can of soda"
	verb/drink()
	set src in view(0)
	usr.HurtMe(25) //OUCH!