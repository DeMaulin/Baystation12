/obj/item/clothing/head/wizard
	name = "wizard hat"
	desc = "Strange-looking hat-wear that most certainly belongs to a real magic user."
	icon_state = "wizard"
	item_state_slots = list(
		slot_l_hand_str = "wizhat",
		slot_r_hand_str = "wizhat",
		)
	//Not given any special protective value since the magic robes are full-body protection --NEO
	siemens_coefficient = 0.8
	body_parts_covered = 0
	wizard_garb = 1

/obj/item/clothing/head/wizard/red
	name = "red wizard hat"
	desc = "Strange-looking, red, hat-wear that most certainly belongs to a real magic user."
	icon_state = "redwizard"
	siemens_coefficient = 0.8

/obj/item/clothing/head/wizard/fake
	name = "wizard hat"
	desc = "It has WIZZARD written across it in sequins. Comes with a cool beard."
	icon_state = "wizard-fake"
	body_parts_covered = HEAD|FACE

/obj/item/clothing/head/wizard/marisa
	name = "Witch Hat"
	desc = "Strange-looking hat-wear, makes you want to cast fireballs."
	icon_state = "marisa"
	siemens_coefficient = 0.8

/obj/item/clothing/head/wizard/magus
	name = "Magus Helm"
	desc = "A mysterious helmet that hums with an unearthly power."
	icon_state = "magus"
	item_state = "magus"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet",
		)
	siemens_coefficient = 0.8
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/head/wizard/magus
	name = "Magus Helm"
	desc = "A mysterious helmet that hums with an unearthly power."
	icon_state = "magus"
	item_state = "magus"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet",
		)
	siemens_coefficient = 0.8
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/head/wizard/magir
	name = "red wizard hood"
	desc = "This hood is painted in blood of innocent servant of Evil."
	icon_state = "magir"
	item_state = "magir"
	item_state_slots = list(
		slot_l_hand_str = "wizard",
		slot_r_hand_str = "wizard",
		)
	siemens_coefficient = 0.8
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/head/wizard/magig
	name = "green wizard hood"
	desc = "It has runic letter on it. QF'QF'ASA. Who known what it's mean?"
	icon_state = "magig"
	item_state = "magig"
	item_state_slots = list(
		slot_l_hand_str = "wizard",
		slot_r_hand_str = "wizard",
		)
	siemens_coefficient = 0.8
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/head/wizard/magib
	name = "green wizard hood"
	desc = "This hood makes you remember the blue sky of Midgard. Ah, good old times!"
	icon_state = "magib"
	item_state = "magib"
	item_state_slots = list(
		slot_l_hand_str = "wizard",
		slot_r_hand_str = "wizard",
		)
	siemens_coefficient = 0.8
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/head/wizard/magiy
	name = "green wizard hood"
	desc = "The safe word isn't banana"
	icon_state = "magiy"
	item_state = "magiy"
	item_state_slots = list(
		slot_l_hand_str = "wizard",
		slot_r_hand_str = "wizard",
		)
	siemens_coefficient = 0.8
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/head/wizard/amp
	name = "psychic amplifier"
	desc = "A crown-of-thorns psychic amplifier. Kind of looks like a tiara having sex with an industrial robot."
	icon_state = "amp"
	item_state_slots = list(
		slot_l_hand_str = "helmet",
		slot_r_hand_str = "helmet",
		)
	siemens_coefficient = 0.8

/obj/item/clothing/head/wizard/cap
	name = "Gentlemans Cap"
	desc = "A checkered gray flat cap woven together with the rarest of threads."
	icon_state = "gentcap"
	item_state_slots = list(
		slot_l_hand_str = "det_hat",
		slot_r_hand_str = "det_hat",
		)
	siemens_coefficient = 0.8

/obj/item/clothing/head/wizard/druid
	name = "crown of Yggdrasil"
	desc = "Crown created by interlacement of branches and roots of ancient black timber instructed by silver branches."
	icon_state = "druid"
	item_state = "druid"
	item_state_slots = list(
		slot_l_hand_str = "det_hat",
		slot_r_hand_str = "det_hat",
		)
	siemens_coefficient = 0.8

/obj/item/clothing/suit/wizrobe
	name = "wizard robe"
	desc = "A magnificant, gem-lined robe that seems to radiate power."
	icon_state = "wizard"
	item_state = "wizrobe"
	gas_transfer_coefficient = 0.01 // IT'S MAGICAL OKAY JEEZ +1 TO NOT DIE
	permeability_coefficient = 0.01
	armor = list(melee = 30, bullet = 20, laser = 20,energy = 20, bomb = 20, bio = 20, rad = 20)
	allowed = list(/obj/item/weapon/teleportation_scroll)
	siemens_coefficient = 0.8
	wizard_garb = 1

/obj/item/clothing/suit/wizrobe/red
	name = "red wizard robe"
	desc = "A magnificant, red, gem-lined robe that seems to radiate power."
	icon_state = "redwizard"
	item_state = "redwizrobe"

/obj/item/clothing/suit/wizrobe/magir
	name = "red wizard robe"
	desc = "I put on my robe and my wizard hat."
	icon_state = "magir"
	item_state = "magir"

/obj/item/clothing/suit/wizrobe/magig
	name = "green wizard robe"
	desc = "It's covered with spots of old beer."
	icon_state = "magig"
	item_state = "magig"

/obj/item/clothing/suit/wizrobe/magib
	name = "blue wizard robe"
	desc = "Generally, goblins have red blood. But this is blue!"
	icon_state = "magib"
	item_state = "magib"

/obj/item/clothing/suit/wizrobe/magiy
	name = "yellow wizard robe"
	desc = "Ah, let's save this world again!"
	icon_state = "magiy"
	item_state = "magiy"

/obj/item/clothing/suit/wizrobe/druid
	name = "druid robe"
	desc = "A robe made of raw hide that seems to radiate malevolent nature power."
	icon_state = "druid"
	item_state = "druid"

/obj/item/clothing/suit/wizrobe/marisa
	name = "Witch Robe"
	desc = "Magic is all about the spell power, ZE!"
	icon_state = "marisa"
	item_state = "marisarobe"

/obj/item/clothing/suit/wizrobe/magusblue
	name = "Magus Robe"
	desc = "A set of armoured robes that seem to radiate a dark power."
	icon_state = "magusblue"
	item_state = "magusblue"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|HANDS|LEGS|FEET

/obj/item/clothing/suit/wizrobe/magusred
	name = "Magus Robe"
	desc = "A set of armoured robes that seem to radiate a dark power."
	icon_state = "magusred"
	item_state = "magusred"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|HANDS|LEGS|FEET

/obj/item/clothing/suit/wizrobe/psypurple
	name = "purple robes"
	desc = "Heavy, royal purple robes threaded with psychic amplifiers and weird, bulbous lenses. Do not machine wash."
	icon_state = "psyamp"
	item_state = "psyamp"

/obj/item/clothing/suit/wizrobe/gentlecoat
	name = "Gentlemans Coat"
	desc = "A heavy threaded twead gray jacket. For a different sort of Gentleman."
	icon_state = "gentlecoat"
	item_state = "gentlecoat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/suit/wizrobe/fake
	name = "wizard robe"
	desc = "A rather dull, blue robe meant to mimick real wizard robes."
	icon_state = "wizard-fake"
	item_state = "wizrobe"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 1.0

/obj/item/clothing/head/wizard/marisa/fake
	name = "Witch Hat"
	desc = "Strange-looking hat-wear, makes you want to cast fireballs."
	icon_state = "marisa"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 1.0

/obj/item/clothing/suit/wizrobe/marisa/fake
	name = "Witch Robe"
	desc = "Magic is all about the spell power, ZE!"
	icon_state = "marisa"
	item_state = "marisarobe"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 1.0

