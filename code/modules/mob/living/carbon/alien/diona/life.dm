//Dionaea regenerate health and nutrition in light.
/mob/living/carbon/alien/diona/handle_environment(datum/gas_mixture/environment)

	var/light_amount = 0 //how much light there is in the place, affects receiving nutrition and healing
	if(isturf(loc)) //else, there's considered to be no light
		var/turf/T = loc
		var/atom/movable/lighting_overlay/L = locate(/atom/movable/lighting_overlay) in T
		if(L)
			light_amount = round((T.get_lumcount()*10)-5)//HERE


	nutrition += light_amount

	if(nutrition > 500)
		nutrition = 500
	if(light_amount > 2) //if there's enough light, heal
		adjustBruteLoss(-1)
		adjustFireLoss(-1)
		adjustToxLoss(-1)
		adjustOxyLoss(-1)