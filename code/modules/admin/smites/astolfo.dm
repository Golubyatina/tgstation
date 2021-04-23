#define TRAPIFY_TIME (20 SECONDS)

/// Turns the target into astolfo bean plushie
/datum/smite/astolfo
	name = "Trapify"

/datum/smite/astolfo/effect(client/user, mob/living/target)
	. = ..()
	var/mutable_appearance/astolfo_appearance = mutable_appearance('icons/misc/astolfo.dmi', "astolfo")
	var/mutable_appearance/transform_scanline = mutable_appearance('icons/effects/effects.dmi', "transform_effect")
	target.transformation_animation(astolfo_appearance,time = TRAPIFY_TIME, transform_overlay=transform_scanline, reset_after=TRUE)
	addtimer(CALLBACK(GLOBAL_PROC, .proc/trapify, target), TRAPIFY_TIME)

#undef TRAPIFY_TIME
