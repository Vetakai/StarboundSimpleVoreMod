require "/scripts/vore/npcvore.lua"

isDigest = true

function initHook()

	index = npc.getItemSlot("legs").parameters.colorIndex
	
	legs = {
		name = "orcanalegs",
		parameters = {
					colorIndex = index
	}}
	
	fulllegs = {
		name = "orcanalegsbelly",
		parameters = {
					colorIndex = index
	}}

end