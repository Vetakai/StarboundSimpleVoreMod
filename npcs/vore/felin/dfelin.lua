require "/scripts/vore/npcvore.lua"

isDigest = true

function initHook()

	index = npc.getItemSlot("legs").parameters.colorIndex
	
	legs = {
		name = "felinlegs",
		parameters = {
					colorIndex = index
	}}
	
	fulllegs = {
		name = "felinlegsbelly",
		parameters = {
					colorIndex = index
	}}

end