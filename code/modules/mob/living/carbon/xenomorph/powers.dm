/mob/living/carbon/human/xenomorph/proc/toggle_nvg(message = 1)
	if(stat != CONSCIOUS)
		return

	nightvision = !nightvision

	if(!nightvision)
		see_in_dark = 8
		see_invisible = SEE_INVISIBLE_MINIMUM
		nightvisionicon.icon_state = "nightvision0"
	else if(src.nightvision == 1)
		see_in_dark = 4
		see_invisible = 45
		nightvisionicon.icon_state = "nightvision1"

	if(message)
		to_chat(src, "<span class='noticealien'>You adapt your eyes for [nightvision ? "dark":"light"] !</span>")
	else
		return
