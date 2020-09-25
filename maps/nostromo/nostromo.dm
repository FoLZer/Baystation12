#if !defined(using_map_DATUM)

	#include "nostromo_announcements.dm"
	#include "nostromo_antagonism.dm"
	#include "nostromo_areas.dm"
	#include "nostromo_lobby.dm"
	#include "nostromo_overmap.dm"
	#include "nostromo_presets.dm"
	#include "nostromo_procs.dm"
	#include "nostromo_ranks.dm"
	#include "nostromo_security_state.dm"
	#include "nostromo_setup.dm"
	#include "nostromo_shuttles.dm"
	#include "nostromo_submaps.dm"
	#include "nostromo_turfs.dm"
	#include "nostromo_unit_testing.dm"

	#include "nostromo_snatch.dm"

	#include "datums/uniforms_employee.dm"

	#include "datums/reports/command.dm"
	#include "datums/reports/science.dm"
	#include "datums/reports/security.dm"
	#include "datums/reports/deck.dm"

	#include "datums/supplypacks/engineering.dm"
	#include "datums/supplypacks/security.dm"
	#include "datums/supplypacks/science.dm"

	#include "game/antagonist/languages.dm"
	#include "game/antagonist/objective.dm"

	#include "items/cards_ids.dm"
	#include "items/encryption_keys.dm"
	#include "items/explo_shotgun.dm"
	#include "items/guns.dm"
	#include "items/headsets.dm"
	#include "items/items.dm"
	#include "items/lighting.dm"
	#include "items/manuals.dm"
	#include "items/papers.dm"
	#include "items/rigs.dm"
	#include "items/stamps.dm"

	#include "items/clothing/clothing.dm"
	#include "items/clothing/override.dm"

	#include "job/access.dm"
	#include "job/jobs.dm"
	#include "job/outfits.dm"
	#include "job/infinity.dm"

	#include "job/jobs_cargo.dm"
	#include "job/jobs_command.dm"
	#include "job/jobs_service.dm"

	#include "machinery/doors.dm"
	#include "machinery/machinery.dm"
	#include "machinery/power.dm"
	#include "machinery/random.dm"
	#include "machinery/tcomms.dm"
	#include "machinery/thrusters.dm"
	#include "machinery/uniform_vendor.dm"
	#include "machinery/vendors.dm"

	#include "structures/closets.dm"
	#include "structures/other.dm"
	#include "structures/override.dm"

	#include "structures/closets/_closets_appearances.dm"
	#include "structures/closets/armory.dm"
	#include "structures/closets/command.dm"
	#include "structures/closets/engineering.dm"
	#include "structures/closets/medical.dm"
	#include "structures/closets/misc.dm"
	#include "structures/closets/security.dm"
	#include "structures/closets/services.dm"
	#include "structures/closets/supply.dm"

	#include "loadout/_defines.dm"
	#include "loadout/loadout_accessories.dm"
	#include "loadout/loadout_eyes.dm"
	#include "loadout/loadout_gloves.dm"
	#include "loadout/loadout_head.dm"
	#include "loadout/loadout_pda.dm"
	#include "loadout/loadout_shoes.dm"
	#include "loadout/loadout_suit.dm"
	#include "loadout/loadout_uniform.dm"
	#include "loadout/loadout_tactical.dm"
	#include "loadout/loadout_xeno.dm"
	#include "loadout/~defines.dm"

	#include "nostromo.dmm"
	#include "../away/empty.dmm"

	#include "../away_inf/xeno_planet/xeno_planet.dm"
	#include "../away_inf/blueriver/blueriver.dm"

	#define using_map_DATUM /datum/map/nostromo

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring nostromo

#endif
