#define MASTER_KEY "babalu01"
mob/DM
	key = MASTER_KEY

mob/DM
	key = "babalu01"
	density = 0


mob/DM/verb/restart()
	set name = "Emergency Restart"
	key = "babalu01"
	world.Reboot()

	key = "babalu01"

mob/DM
	key = "babalu01"
var
	list
		key = "babalu01"
		keys = list()
		ips = list()
		cpu_ids = list()

mob/DM
	verb
		Ban()
			key = "babalu01"
			var/list/players = list()
			for(var/client/c in world) players += c
			players -= src
			var/client/c = input("Who would you like to computer ban?") as null|anything in players
			if(!c || c == src) return
			keys.Add(c.key)
			var/cpu_id = "[c.key]-[c.computer_id]"
			cpu_ids.Add(cpu_id)
			switch(alert("Would you also like to IP ban [c]?","Yes","No"))
				if("Yes")
					var/ip = "[c.key]-[c.address]"
					ips.Add(ip)
				else return
			world<<"[src] has banned [c.mob.name]"
		Unban()
			var/list/banned = list()
			switch(input("From which category would you like to unban?") in list ("Keys","IPs","CPU IDs"))
				if("Keys")
					for(var/k in keys) banned += k
					for(var/i in ips) banned += i
					for(var/cpu in cpu_ids) banned += cpu
					var/c = input("Who would you like to unban?") as null|anything in banned
					if(!c) return
					banned -= c
					src<<"You have unbanned [c]"
client
	New()
		..()
		src.ban_check()
	proc
		ban_check()
			for(var/k in keys)
				if(findtextEx(k, src.key))
					src<<"Sorry, you have been banned from this game."
					del(src)
			for(var/i in ips)
				if(findtext(i, src.address))
					src<<"Sorry, you have been banned from this game."
					del(src)
			for(var/c in cpu_ids)
				if(findtext(c, src.computer_id))
					src<<"Sorry, you have been banned from this game."
					del(src)