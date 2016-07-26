require "/scripts/vore/multivore.lua"

legs 		= "crystaldragonlegs"
midlegs 	= "crystaldragonlegsbelly1"
fulllegs 	= "crystaldragonlegsbelly2"

duration = 120

projectile	= "dragonvoreprojectile"
dprojectile	= "dragondvoreprojectile"

smallLines = {	"You must be so lonely in there.",
				"Barely a meal.",
				"I can bet you are comfortable",
				"I have been told my gut is very spacious. Enjoy it while you are alone!"
			}
			
medLines = {	"I hope you two are getting along.",
				"A fine meal!",
				"Stop figthing in there. It's only natural you would be food.",
				"I've never been a one prey dragon."
			}

largeLines = {	"Now this is more like it!",
				"I'm stuffed!",
				"You three have got to be the most delicious I've had in a while.",
				"Pretty cramped in there is it? Ha!"
			}
			
function updateHook()

	if math.random(700) == 1 and ( playerTimer < duration or request[1] == true or request[2] == true or request[3] == true ) then
	
		if #victim == 1 then
			npc.say( smallLines[math.random(#smallLines)])
		elseif #victim == 2 then
			npc.say( medLines[math.random(#medLines)])
		elseif #victim == 3 then
			npc.say( largeLines[math.random(#largeLines)])
		end
		
	end

end