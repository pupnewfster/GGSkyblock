#priority 950

import mods.compatskills.MaterialLock.addMaterialLock;

static materials as string[][string] = {
	wood : ["compatskills:smithing|2"],
	stone : ["compatskills:smithing|3"],
	flint : ["compatskills:smithing|3", "reskillable:building|2"],
	bone : ["compatskills:smithing|3", "reskillable:agility|2"],
	paper : ["compatskills:smithing|10", "reskillable:building|10", "reskillable:agility|10"],
	cactus : ["reskillable:farming|10", "compatskills:smithing|5"],
	reed : ["reskillable:farming|10", "compatskills:smithing|5"],
	leaf : ["reskillable:farming|10", "compatskills:smithing|5"],
	vine : ["reskillable:farming|10", "compatskills:smithing|5"],
	cactus : ["reskillable:farming|10", "compatskills:smithing|5"],
	slimeleaf_blue : ["reskillable:farming|15", "compatskills:smithing|10"],
	slimevine_blue : ["reskillable:farming|15", "compatskills:smithing|10"],
	slimevine_purple : ["reskillable:farming|25", "compatskills:smithing|15"],
	slimeleaf_purple : ["reskillable:farming|25", "compatskills:smithing|15"],
	slimeleaf_orange : ["reskillable:farming|30", "compatskills:smithing|20"],
	firewood : ["reskillable:farming|10", "reskillable:magic|15", "compatskills:smithing|15"],
	material_string : ["reskillable:agility|10", "compatskills:smithing|5"],
	feather : ["reskillable:agility|10", "compatskills:smithing|5"],
	slime : ["reskillable:agility|15", "compatskills:smithing|5"],
	blueslime : ["reskillable:agility|20", "compatskills:smithing|10"],
	magmaslime : ["reskillable:agility|25", "compatskills:smithing|20"],
	livingwood_plustic : ["reskillable:magic|15", "compatskills:smithing|5"],
	tnt : ["compatskills:technology|16", "compatskills:smithing|7"],
	refinedobsidian : ["compatskills:smithing|35", "compatskills:technology|25"],
	refinedglowstone : ["compatskills:smithing|35", "compatskills:technology|25"],
	obsidian : ["reskillable:magic|13", "compatskills:smithing|40"],
	prismarine : ["reskillable:magic|9", "compatskills:smithing|12", "reskillable:agility|5"],
	sponge : ["reskillable:magic|7", "compatskills:smithing|12", "reskillable:agility|5"],
	netherrack : ["reskillable:magic|6", "compatskills:smithing|12"],
	ice : ["reskillable:magic|6", "compatskills:smithing|12"],
	blaze : ["reskillable:magic|28", "compatskills:smithing|17"],
	end : ["reskillable:magic|37", "compatskills:smithing|25"],
	darkmatter : ["trait|compatskills:unlock_projecte", "compatskills:smithing|50", "reskillable:agility|16"],
	redmatter : ["trait|compatskills:unlock_projecte", "compatskills:smithing|75", "reskillable:agility|23"],
	infinity_avaritia_plustic : ["reskillable:magic|95", "compatskills:smithing|128", "compatskills:technology|87", "reskillable:building|57", "reskillable:agility|34"],
	thaumium : ["compatskills:smithing|30", "trait|compatskills:unlock_thaumcraft"],
	alkimium : ["compatskills:smithing|18", "trait|compatskills:unlock_thaumcraft"],
	bismuth : ["compatskills:smithing|48", "trait|compatskills:unlock_thaumcraft"],
	manasteel : ["trait|compatskills:apprentice", "trait|compatskills:unlock_botania"],
	terrasteel : ["trait|compatskills:adept", "trait|compatskills:unlock_botania"],
	elementium : ["trait|compatskills:master", "trait|compatskills:unlock_botania"],
	shadowium : ["trait|compatskills:master", "trait|compatskills:unlock_botania"],
	orichalcos : ["trait|compatskills:master", "trait|compatskills:unlock_botania"],
	bloodbronze : ["trait|compatskills:novice", "trait|compatskills:unlock_bloodmagic"],
	aer_thaumium : ["trait|compatskills:novice", "trait|compatskills:unlock_thaumcraft", "reskillable:agility|21"],
	ignis_thaumium : ["trait|compatskills:novice", "trait|compatskills:unlock_thaumcraft", "reskillable:attack|13"],
	aqua_thaumium : ["trait|compatskills:novice", "trait|compatskills:unlock_thaumcraft", "reskillable:farming|8"],
	terra_thaumium : ["trait|compatskills:novice", "trait|compatskills:unlock_thaumcraft", "reskillable:defense|13"],
	ordo_thaumium : ["trait|compatskills:novice", "trait|compatskills:unlock_thaumcraft", "reskillable:magic|21"],
	perditio_thaumium : ["trait|compatskills:novice", "trait|compatskills:unlock_thaumcraft", "reskillable:mining|16"],
	metal1 : ["compatskills:smithing|5"],
	metal2 : ["trait|compatskills:novice"],
	metal3 : ["trait|compatskills:apprentice"],
	metal4 : ["trait|compatskills:adept"],
	metal5 : ["trait|compatskills:master"]
} as string[][string];

addMaterialLock("wood", materials.wood);
addMaterialLock("stone", materials.stone);
addMaterialLock("flint", materials.flint);
addMaterialLock("bone", materials.bone);
addMaterialLock("paper", materials.paper);
addMaterialLock("cactus", materials.cactus);
addMaterialLock("reed", materials.reed);
addMaterialLock("leaf", materials.leaf);
addMaterialLock("vine", materials.vine);
addMaterialLock("slimeleaf_blue", materials.slimeleaf_blue);
addMaterialLock("slimevine_blue", materials.slimevine_blue);
addMaterialLock("slimeleaf_purple", materials.slimeleaf_purple);
addMaterialLock("slimevine_purple", materials.slimevine_purple);
addMaterialLock("slimeleaf_orange", materials.slimeleaf_orange);
addMaterialLock("firewood", materials.firewood);
addMaterialLock("string", materials.material_string);
addMaterialLock("feather", materials.feather);
addMaterialLock("slime", materials.slime);
addMaterialLock("blueslime", materials.blueslime);
addMaterialLock("magmaslime", materials.magmaslime);
addMaterialLock("livingwood_plustic", materials.livingwood_plustic);
addMaterialLock("tnt", materials.tnt);
addMaterialLock("refinedobsidian", materials.refinedobsidian);
addMaterialLock("refinedglowstone", materials.refinedglowstone);
addMaterialLock("obsidian", materials.obsidian);
addMaterialLock("prismarine", materials.prismarine);
addMaterialLock("sponge", materials.sponge);
addMaterialLock("netherrack", materials.netherrack);
addMaterialLock("ice", materials.ice);
addMaterialLock("blaze", materials.blaze);
addMaterialLock("endstone", materials.end);
addMaterialLock("endrod", materials.end);
addMaterialLock("darkmatter", materials.darkmatter);
addMaterialLock("redmatter", materials.redmatter);
addMaterialLock("thaumium", materials.thaumium);
addMaterialLock("bismuth", materials.bismuth);
addMaterialLock("infinity_avaritia_plustic", materials.infinity_avaritia_plustic);
addMaterialLock("manasteel", materials.manasteel);
addMaterialLock("elementium", materials.elementium);
addMaterialLock("terrasteel", materials.terrasteel);
addMaterialLock("alkimium", materials.alkimium);
addMaterialLock("extrabotany:ingotshadowium", materials.shadowium);
addMaterialLock("extrabotany:ingotorichalcos", materials.orichalcos);
addMaterialLock("bloodbronze", materials.bloodbronze);
addMaterialLock("aer_thaumium", materials.aer_thaumium);
addMaterialLock("ignis_thaumium", materials.ignis_thaumium);
addMaterialLock("aqua_thaumium", materials.aqua_thaumium);
addMaterialLock("terra_thaumium", materials.terra_thaumium);
addMaterialLock("ordo_thaumium", materials.ordo_thaumium);
addMaterialLock("perditio_thaumium", materials.perditio_thaumium);


val tierOneMetals = [
	"iron",
	"pigiron",
	"copper",
	"lead",
	"silver",
	"construction_alloy",
	"crude_steel",
	"energetic_silver"
] as string[];

val tierTwoMetals = [
	"electrical_steel",
	"redstone_alloy",
	"conductive_iron",
	"pulsating_iron",
	"knightslime",
	"bronze",
	"electrum",
	"osmium",
	"blackquartz_plustic",
	"certusquartz_plustic",
	"vivid_alloy"
] as string[];

val tierThreeMetals = [
	"energetic_alloy",
	"steel",
	"invar",
	"fluixcrystal_plustic",
	"restonia_actadd_plustic",
	"iridium",
	"enori_actadd_plustic",
	"nickel",
	"void_actadd_plustic",
	"crystalline_alloy"
] as string[];

val tierFourMetals = [
	"vibrant_alloy",
	"dark_steel",
	"end_steel",
	"cobalt",
	"ardite",
	"osmiridium",
	"emeradic_actadd_plustic",
	"diamatine_actadd_plustic",
	"alumite",
	"palis_actadd_plustic",
	"emerald_plustic",
	"crystalline_pink_slime"
] as string[];

val tierFiveMetals = [
	"manyullyn",
	"soularium",
	"osgloglas",
	"mirion",
	"melodic_alloy",
	"stellar_alloy"
] as string[];


for metal in tierOneMetals {
	addMaterialLock(metal, materials.metal1);
}

for metal in tierTwoMetals {
	addMaterialLock(metal, materials.metal2);
}

for metal in tierThreeMetals {
	addMaterialLock(metal, materials.metal3);
}

for metal in tierFourMetals {
	addMaterialLock(metal, materials.metal4);
}

for metal in tierFiveMetals {
	addMaterialLock(metal, materials.metal5);
}