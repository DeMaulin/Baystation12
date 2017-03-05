/atom
	var/light_power = 1 // Itensity of the light
	var/light_range = 0 // Range in tiles of the light
	var/light_color     // HEXADECIMAL //RGB string representing the colour of the light

	var/tmp/datum/light_source/light // Our light source. Don't fuck with this directly unless you have a good reason!
	var/tmp/list/light_sources // Any light sources that are "inside" of us, for example,if
						  //src here was a mob that's carrying a flashlight, that flashlight's light source would be part of this list.
/atom/proc/set_light(l_range, l_power, l_color)
	if(l_power != null) light_power = l_power
	if(l_range != null) light_range = l_range
	if(l_color != null) light_color = l_color
	update_light()

/atom/proc/update_light()
	if(!light_power || !light_range)
		if(light)
			light.destroy()
			light = null
	else
		if(!istype(loc, /atom/movable))
			. = src
		else
			. = loc

		if(light)
			light.update(.)
		else
			light = new/datum/light_source(src, .)

/atom/New()
	. = ..()
	if(light_power && light_range)
		update_light()
	if(opacity && isturf(loc))
		var/turf/T = loc
		T.has_opaque_atom = TRUE // No need to recalculate it in this case, it's guaranteed to be on afterwards anyways.

/atom/Destroy()
	if(light)
		light.destroy()
		light = null
	return ..()

/atom/movable/New()
	. = ..()

	if(opacity && isturf(loc))
		var/turf/T = loc
		T.reconsider_lights()
// If we have opacity, make sure to tell (potentially) affected light sources.

/*tom/movable/Destroy()
	var/turf/T = loc
	if(opacity && istype(T))
		opacity = 0
		T.recalc_atom_opacity()
		T.reconsider_lights()
	return ..()*/

/atom/proc/set_opacity(new_opacity)
	if(opacity != new_opacity)
		opacity = !!new_opacity
		var/turf/T = loc
		if(istype(T))
			T.reconsider_lights()

// This code makes the light be queued for update when it is moved.
// Entered() should handle it, however Exited() can do it if it is being moved to nullspace (as there would be no Entered() call in that situation).
/atom/Entered(atom/movable/Obj, atom/OldLoc) //Implemented here because forceMove() doesn't call Move()
	. = ..()

	if(Obj && OldLoc != src)
		for(var/A in Obj.light_sources) // Cycle through the light sources on this atom and tell them to update.
			if(!A)
				continue

			var/datum/light_source/L = A
			L.source_atom.update_light()

/atom/Exited(var/atom/movable/Obj, var/atom/newloc)
	. = ..()
	if(!newloc && Obj && newloc != src) // Incase the atom is being moved to nullspace, we handle queuing for a lighting update here.
		for(var/A in Obj.light_sources) // Cycle through the light sources on this atom and tell them to update.
			if(!A)
				continue

			var/datum/light_source/L = A
			L.source_atom.update_light()

/obj/item/equipped()
	. = ..()
	update_light()

/obj/item/pickup()
	. = ..()
	update_light()

/obj/item/dropped()
	. = ..()
	update_light()
