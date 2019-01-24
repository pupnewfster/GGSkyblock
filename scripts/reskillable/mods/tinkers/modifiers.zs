#priority 940

import mods.compatskills.ModifierLock.addModifierLock;

//Unlike modifiers below this is modifier -> identifiers that would use it if it was locked
val unused_modifiers = {
	breakable : ["breakable"],
	cheapskate : ["cheapskate", "cheapskate_armor"]
} as string[][string];


val modifiers = {
	haste : ["reskillable:mining|5", "reskillable:agility|10"],
	luck : ["reskillable:magic|16"],
	sharpness : ["reskillable:attack|27"],
	diamond : ["compatskills:smithing|27", "reskillable:mining|15"],
	diamond_armor : ["compatskills:smithing|27", "reskillable:defense|15"],
	emerald : ["compatskills:smithing|27"],
	emerald_armor : ["compatskills:smithing|27", "reskillable:defense|16"],
	reinforced : ["compatskills:smithing|46", "reskillable:building|19", "compatskills:technology|17"],
	reinforced_armor : ["compatskills:smithing|46", "reskillable:building|19", "compatskills:technology|17", "reskillable:defense|23"],
	beheading : ["reskillable:magic|27", "reskillable:attack|15"],
	unnamed : ["reskillable:magic|17"],
	fiery : ["compatskills:smithing|13"],
	necrotic : ["reskillable:magic|57"],
	soulbound : ["reskillable:magic|78"],
	harvestsize : ["reskillable:mining|27", "reskillable:gathering|27", "compatskills:technology|27"],
	mending_moss : ["reskillable:magic|27"],
	blasting : ["compatskills:technology|27"],
	glowing : ["reskillable:magic|7"],
	shulking : ["reskillable:magic|46"],
	webbed : ["reskillable:magic|17", "reskillable:defense|7"],
	fins : ["compatskills:technology|29"],
	enderpickup : ["reskillable:magic|39"],
	flammable : ["reskillable:magic|13"],
	superheat : ["reskillable:attack|7"],
	splinters : ["reskillable:attack|13"],
	shocking : ["reskillable:agility|12", "reskillable:attack|6", "reskillable:mining|7"],
    crude1 : ["reskillable:defense|7", "reskillable:attack|15"],
	crude2 : ["reskillable:defense|9", "reskillable:attack|27"],
	writable1 : ["compatskills:smithing|13", "reskillable:magic|17", "compatskills:technology|4"],
	writable2 : ["compatskills:smithing|21", "reskillable:magic|37", "compatskills:technology|16"],
	lightweight : ["reskillable:agility|43"],
	momentum : ["reskillable:agility|26", "reskillable:mining|31"],
	devilsstrength : ["reskillable:magic|14", "reskillable:attack|21"],
	anticorrosion : ["reskillable:magic|15", "compatskills:technology|31"],
	magnetic1 : ["reskillable:magic|12", "compatskills:technology|23"],
	magnetic2 : ["reskillable:magic|24", "compatskills:technology|37"],
	nickoftime : ["reskillable:magic|100", "compatskills:technology|31"],
	starfishy : ["reskillable:magic|120", "compatskills:technology|37"],
	modifier_global : ["reskillable:magic|32"],
	prideful : ["reskillable:defense|31"],
	alien : ["reskillable:magic|45"],
	holy : ["reskillable:attack|13"],
	botanical1 : ["compatskills:smithing|31", "reskillable:magic|47", "compatskills:technology|32"],
	botanical2 : ["compatskills:smithing|61", "reskillable:magic|77", "compatskills:technology|56"],
	indomitable : ["reskillable:defense|14"],
	dense : ["compatskills:smithing|21"],
	combustible : ["reskillable:magic|13", "reskillable:defense|17"],
	mundane1 : ["reskillable:defense|7"],
	mundane2 : ["reskillable:defense|23"],
	hellish : ["reskillable:attack|17"],
	vengeful : ["reskillable:defense|23"],
	frostwalker : ["reskillable:magic|21"],
	aridiculous : ["reskillable:magic|9"],
	aquaspeed : ["reskillable:agility|17", "reskillable:magic|7"],
	amphibious : ["reskillable:agility|21", "reskillable:magic|7"],
	freezing : ["reskillable:magic|12", "reskillable:attack|23"],
	terrafirma1 : ["reskillable:magic|32"],
	terrafirma2 : ["reskillable:magic|47"],
	dprk : ["compatskills:technology|56"],
	splintering : ["reskillable:attack|13"],
	brownmagic : ["reskillable:magic|47", "compatskills:technology|23"],
	endspeed : ["reskillable:agility|27"],
	sticky : ["reskillable:defense|11"],
	petramor : ["reskillable:magic|31"],
	autosmelt : ["compatskills:technology|21", "reskillable:building|11"],
	morganlefay : ["reskillable:magic|12", "reskillable:attack|27"],
	blessed : ["reskillable:defense|13"],
	thaumic : ["reskillable:magic|24"],
	aurainfusing : ["reskillable:magic|48"],
	tasty : ["reskillable:farming|12"],
	featherweight : ["reskillable:agility|52"],
	established : ["reskillable:magic|43"],
	rough : ["reskillable:attack|7", "reskillable:defense|26"],
	telekinetic : ["reskillable:magic|13", "reskillable:agility|21"],
	darktraveler : ["reskillable:magic|13", "reskillable:attack|13"],
	dexterous : ["reskillable:agility|21", "reskillable:attack|23"],
	ambitious : ["reskillable:magic|33"],
	shulkerweight : ["reskillable:agility|32"],
	bouncy : ["reskillable:agility|15"],
	aquadynamic : ["reskillable:mining|12", "reskillable:magic|12", "reskillable:agility|12"],
	elemental : ["reskillable:magic|21", "reskillable:gathering|26"],
	hovering : ["reskillable:agility|21", "reskillable:attack|8"],
	mana : ["reskillable:magic|24"],
	mirabile : ["reskillable:mining|12", "reskillable:magic|21"],
	infernal : ["reskillable:defense|21", "reskillable:magic|12"],
	fire_resistant : ["reskillable:defense|16", "reskillable:magic|21"],
	illuminati : ["reskillable:magic|21"],
	heavy : ["reskillable:defense|21"],
	splitting : ["reskillable:agility|7"],
	explosive : ["reskillable:attack|7", "compatskills:technology|32"],
	unnatural : ["reskillable:magic|31", "reskillable:mining|42"],
	powerful : ["reskillable:attack|35"],
	spiky : ["reskillable:defense|27", "reskillable:attack|7"],
	poisonous : ["reskillable:attack|17"],
	sharp : ["reskillable:attack|21"],
	shielding : ["reskillable:defense|31"],
	superhot : ["reskillable:magic|7", "reskillable:agility|21"],
	skeletal : ["reskillable:defense|31"],
	parasitic : ["reskillable:magic|9", "reskillable:defense|9"],
	calcic : ["reskillable:defense|33"],
	petravidity : ["reskillable:defense|19", "reskillable:magic|9"],
	sassy : ["reskillable:attack|23"],
	jagged : ["reskillable:defense|6", "reskillable:defense|12"],
	ignoble : ["reskillable:attack|21"],
	speedy : ["reskillable:agility|27"],
	insatiable : ["reskillable:attack|17"],
	high_stride : ["reskillable:agility|18"],
	resistant : ["reskillable:defense|22"],
	stiff : ["reskillable:defense|26"],
	baconlicious : ["reskillable:attack|5", "reskillable:magic|9"],
	ecological : ["reskillable:magic|2"],
	fractured : ["reskillable:attack|16"],
	coldblooded : ["reskillable:attack|13"],
	autoforge : ["reskillable:defense|13", "reskillable:magic|21"],
	invigorating : ["reskillable:defense|16", "reskillable:magic|5"],
	subterranean : ["reskillable:defense|13"],
	steady : ["reskillable:defense|17", "reskillable:attack|7"],
	absorbent : ["reskillable:defense|14", "reskillable:magic|6"],
	spiny : ["reskillable:magic|7", "reskillable:attack|13", "reskillable:defense|11"],
	apocalypse : ["reskillable:attack|13", "reskillable:magic|15"],
	prickly : ["reskillable:defense|7", "reskillable:attack|9"],
	vindictive : ["reskillable:attack|14", "reskillable:defense|5"],
	voltaic : ["reskillable:defense|16", "reskillable:magic|9"],
	hearts : ["reskillable:attack|14"],
	spades : ["reskillable:attack|14"],
	portly : ["reskillable:magic|21", "compatskills:taming|23"],
	projectile_resistant : ["reskillable:defense|21"],
	blast_resistant : ["reskillable:defense|21"],
	crumbling : ["reskillable:mining|5", "reskillable:gathering|5"],
	duritos : ["compatskills:smithing|21"],
	knockback : ["reskillable:attack|14", "reskillable:attack|12"],
	smite : ["reskillable:attack|14", "reskillable:magic|11"],
	bane_of_arthopods : ["reskillable:attack|14", "reskillable:magic|11"],
	cheap : ["reskillable:magic|4"],
	silktouch : ["reskillable:mining|14", "reskillable:magic|17"],
	squeaky : ["reskillable:mining|10", "reskillable:magic|13"],
	stonebound : ["reskillable:magic|11", "reskillable:mining|7"],
	dramatic : ["reskillable:defense|14"],
	slimey_blue : ["reskillable:magic|5"],
	slimey_green : ["reskillable:magic|5"],
	enderport : ["reskillable:magic|12"],
	"enderport-0" : ["reskillable:magic|7"],
	"enderport-1" : ["reskillable:magic|12"],
	"enderport-2" : ["reskillable:magic|17"],
	"enderport-3" : ["reskillable:magic|22"],
	"enderport-4" : ["reskillable:magic|27"],
	enderference : ["reskillable:magic|27"],
	body : ["compatskills:smithing|27"],
	mind : ["reskillable:magic|21", "reskillable:agility|23"],
	soul : ["compatskills:smithing|64", "reskillable:magic|87", "compatskills:technology|36"],
	soulstealer : ["reskillable:magic|31", "reskillable:gathering|16", "reskillable:attack|21"],
	bloodstained_armor : ["reskillable:magic|31", "reskillable:gathering|12"],
	concealed_armor : ["reskillable:magic|16", "reskillable:agility|21"],
	shadow : ["reskillable:magic|39", "reskillable:defense|11", "reskillable:attack|11"],
	transmutative : ["reskillable:magic|43", "compatskills:smithing|31", "reskillable:gathering|18", "reskillable:mining|18"],
	brownmagic : ["reskillable:agility|21", "reskillable:magic|87"],
	dunanstransport : ["compatskills:smithing|27", "reskillable:defense|15"],
	camdaibay : ["reskillable:magic|45", "reskillable:defense|32", "reskillable:attack|21"],
	tr_entropic : ["reskillable:magic|14", "reskillable:mining|9", "reskillable:gathering|12"]
} as string[][string];

addModifierLock("haste", modifiers.haste);
addModifierLock("luck", modifiers.luck);
addModifierLock("sharpness", modifiers.sharpness);
addModifierLock("diamond", modifiers.diamond);
addModifierLock("diamond_armor", modifiers.diamond_armor);
addModifierLock("emerald", modifiers.emerald);
addModifierLock("emerald_armor", modifiers.emerald_armor);
addModifierLock("reinforced", modifiers.reinforced);
addModifierLock("reinforced_armor", modifiers.reinforced_armor);
addModifierLock("beheading", modifiers.beheading);
addModifierLock("beheading_cleaver", modifiers.beheading);
addModifierLock("fiery", modifiers.fiery);
addModifierLock("necrotic", modifiers.necrotic);
addModifierLock("soulbound", modifiers.soulbound);
addModifierLock("soulbound_armor", modifiers.soulbound);
addModifierLock("harvestheight", modifiers.harvestsize);
addModifierLock("harvestwidth", modifiers.harvestsize);
addModifierLock("mending_moss", modifiers.mending_moss);
addModifierLock("mending_armor", modifiers.mending_moss);
addModifierLock("blasting", modifiers.blasting);
addModifierLock("glowing", modifiers.glowing);
addModifierLock("glowing_armor", modifiers.glowing);
addModifierLock("shulking", modifiers.shulking);
addModifierLock("webbed", modifiers.webbed);
addModifierLock("fins", modifiers.fins);
addModifierLock("enderpickup", modifiers.enderpickup);
addModifierLock("flammable", modifiers.flammable);
addModifierLock("splinters", modifiers.splinters);
addModifierLock("superheat", modifiers.superheat);
addModifierLock("writable1", modifiers.writable1);
addModifierLock("writable2", modifiers.writable2);
addModifierLock("crude1", modifiers.crude1);
addModifierLock("shocking", modifiers.shocking);
addModifierLock("unnamed", modifiers.unnamed);
addModifierLock("crude2", modifiers.crude2);
addModifierLock("lightweight_armor", modifiers.lightweight);
addModifierLock("lightweight", modifiers.lightweight);
addModifierLock("momentum", modifiers.momentum);
addModifierLock("devilsstrength", modifiers.devilsstrength);
addModifierLock("magnetic1", modifiers.magnetic1);
addModifierLock("magnetic1_armor", modifiers.magnetic1);
addModifierLock("magnetic2", modifiers.magnetic2);
addModifierLock("magnetic2_armor", modifiers.magnetic2);
addModifierLock("nickoftime", modifiers.nickoftime);
addModifierLock("anticorrosion", modifiers.anticorrosion);
addModifierLock("starfishy", modifiers.starfishy);
addModifierLock("global", modifiers.modifier_global);
addModifierLock("prideful_armor", modifiers.prideful);
addModifierLock("alien", modifiers.alien);
addModifierLock("alien_armor", modifiers.alien);
addModifierLock("holy", modifiers.holy);
addModifierLock("botanical1", modifiers.botanical1);
addModifierLock("botanical2", modifiers.botanical2);
addModifierLock("indomitable_armor", modifiers.indomitable);
addModifierLock("dense", modifiers.dense);
addModifierLock("dense_armor", modifiers.dense);
addModifierLock("combustible_armor", modifiers.combustible);
addModifierLock("mundane1_armor", modifiers.mundane1);
addModifierLock("mundane2_armor", modifiers.mundane2);
addModifierLock("hellish", modifiers.hellish);
addModifierLock("vengeful_armor", modifiers.vengeful);
addModifierLock("frostwalker_armor", modifiers.frostwalker);
addModifierLock("tasty", modifiers.tasty);
addModifierLock("tasty_armor", modifiers.tasty);
addModifierLock("thaumic", modifiers.thaumic);
addModifierLock("aurainfusing", modifiers.aurainfusing);
addModifierLock("blessed_armor", modifiers.blessed);
addModifierLock("morganlefay", modifiers.morganlefay);
addModifierLock("autosmelt", modifiers.autosmelt);
addModifierLock("petramor", modifiers.petramor);
addModifierLock("sticky_armor", modifiers.sticky);
addModifierLock("endspeed", modifiers.endspeed);
addModifierLock("splintering", modifiers.splintering);
addModifierLock("terrafirma1", modifiers.terrafirma1);
addModifierLock("terrafirma2", modifiers.terrafirma2);
addModifierLock("freezing", modifiers.freezing);
addModifierLock("aridiculous", modifiers.aridiculous);
addModifierLock("aridiculous_armor", modifiers.aridiculous);
addModifierLock("amphibious_armor", modifiers.amphibious);
addModifierLock("aquaspeed_armor", modifiers.aquaspeed);
addModifierLock("dprk", modifiers.dprk);
addModifierLock("rough_armor", modifiers.rough);
addModifierLock("established", modifiers.established);
addModifierLock("featherweight_armor", modifiers.featherweight);
addModifierLock("telekinetic_armor", modifiers.telekinetic);
addModifierLock("darktraveler", modifiers.darktraveler);
addModifierLock("dexterous_armor", modifiers.dexterous);
addModifierLock("aquadynamic", modifiers.aquadynamic);
addModifierLock("bouncy_armor", modifiers.bouncy);
addModifierLock("shulkerweight_armor", modifiers.shulkerweight);
addModifierLock("ambitious_armor", modifiers.ambitious);
addModifierLock("hovering", modifiers.hovering);
addModifierLock("elemental", modifiers.elemental);
addModifierLock("illuminati", modifiers.illuminati);
addModifierLock("mirabile", modifiers.mirabile);
addModifierLock("fire_resistant_armor", modifiers.fire_resistant);
addModifierLock("infernal_armor", modifiers.infernal);
addModifierLock("mana", modifiers.mana);
addModifierLock("spiky", modifiers.spiky);
addModifierLock("unnatural", modifiers.unnatural);
addModifierLock("splitting", modifiers.splitting);
addModifierLock("explosive", modifiers.explosive);
addModifierLock("powerful_armor", modifiers.powerful);
addModifierLock("heavy", modifiers.heavy);
addModifierLock("heavy_armor", modifiers.heavy);
addModifierLock("shielding_armor", modifiers.shielding);
addModifierLock("sharp", modifiers.sharp);
addModifierLock("poisonous", modifiers.poisonous);
addModifierLock("skeletal_armor", modifiers.skeletal);
addModifierLock("superhot_armor", modifiers.superhot);
addModifierLock("parasitic_armor", modifiers.parasitic);
addModifierLock("petravidity_armor", modifiers.petravidity);
addModifierLock("calcic_armor", modifiers.calcic);
addModifierLock("jagged", modifiers.jagged);
addModifierLock("ignoble", modifiers.ignoble);
addModifierLock("sassy", modifiers.sassy);
addModifierLock("high_stride_armor", modifiers.high_stride);
addModifierLock("insatiable", modifiers.insatiable);
addModifierLock("resistant_armor", modifiers.resistant);
addModifierLock("speedy_armor", modifiers.speedy);
addModifierLock("stiff", modifiers.stiff);
addModifierLock("ecological", modifiers.ecological);
addModifierLock("ecological_armor", modifiers.ecological);
addModifierLock("baconlicious", modifiers.baconlicious);
addModifierLock("baconlicious_armor", modifiers.baconlicious);
addModifierLock("coldblooded", modifiers.coldblooded);
addModifierLock("fractured", modifiers.fractured);
addModifierLock("autoforge_armor", modifiers.autoforge);
addModifierLock("invigorating_armor", modifiers.invigorating);
addModifierLock("steady_armor", modifiers.steady);
addModifierLock("subterranean_armor", modifiers.subterranean);
addModifierLock("absorbent_armor", modifiers.absorbent);
addModifierLock("spiny_armor", modifiers.spiny);
addModifierLock("prickly", modifiers.prickly);
addModifierLock("apocalypse", modifiers.apocalypse);
addModifierLock("vindictive", modifiers.vindictive);
addModifierLock("voltaic_armor", modifiers.voltaic);
addModifierLock("hearts", modifiers.hearts);
addModifierLock("spades", modifiers.spades);
addModifierLock("portly", modifiers.portly);
addModifierLock("projectile_resistant_armor", modifiers.projectile_resistant);
addModifierLock("blast_resistant_armor", modifiers.blast_resistant);
addModifierLock("crumbling", modifiers.crumbling);
addModifierLock("duritos", modifiers.duritos);
addModifierLock("duritos_ranch_armor", modifiers.duritos);
addModifierLock("bane_of_arthopods", modifiers.bane_of_arthopods);
addModifierLock("knockback", modifiers.knockback);
addModifierLock("smite", modifiers.smite);
addModifierLock("cheap", modifiers.cheap);
addModifierLock("cheap_armor", modifiers.cheap);
addModifierLock("stonebound", modifiers.stonebound);
addModifierLock("squeaky", modifiers.squeaky);
addModifierLock("silktouch", modifiers.silktouch);
addModifierLock("dramatic_armor", modifiers.dramatic);
addModifierLock("slimey_blue", modifiers.slimey_blue);
addModifierLock("slimey_blue_armor", modifiers.slimey_blue);
addModifierLock("slimey_green", modifiers.slimey_green);
addModifierLock("slimey_green_armor", modifiers.slimey_green);
addModifierLock("enderport_armor", modifiers.enderport);
addModifierLock("enderport-0", modifiers["enderport-0"]);
addModifierLock("enderport-1", modifiers["enderport-1"]);
addModifierLock("enderport-2", modifiers["enderport-2"]);
addModifierLock("enderport-3", modifiers["enderport-3"]);
addModifierLock("enderport-4", modifiers["enderport-4"]);
addModifierLock("enderference", modifiers.enderference);
addModifierLock("concealed_armor", modifiers.concealed_armor);
addModifierLock("shadow", modifiers.shadow);
addModifierLock("transmutative", modifiers.transmutative);
addModifierLock("brownmagic", modifiers.brownmagic);
addModifierLock("soulstealer", modifiers.soulstealer);
addModifierLock("bloodstained_armor", modifiers.bloodstained_armor);
addModifierLock("body", modifiers.body);
addModifierLock("mind", modifiers.mind);
addModifierLock("soul1", modifiers.soul);
addModifierLock("camdaibay_armor", modifiers.camdaibay);
addModifierLock("dunanstransport_armor", modifiers.dunanstransport);
addModifierLock("tr_entropic", modifiers.tr_entropic);

val materials = scripts.reskillable.mods.tinkers.materials.materials;

//Fortification / Polishing

val tierOneMetals = [
	"fortifyiron",
	"polished_armoriron",
	"fortifypigiron",
	"polished_armorpigiron",
	"fortifycopper",
	"polished_armorcopper",
	"fortifylead",
	"polished_armorlead",
	"fortifysilver",
	"polished_armorsilver",
	"fortifyconstruction_alloy",
	"polished_armorconstruction_alloy"
] as string[];

val tierTwoMetals = [
	"fortifyelectrical_steel",
	"polished_armorelectrical_steel",
	"fortifyredstone_alloy",
	"polished_armorredstone_alloy",
	"fortifyconductive_iron",
	"polished_armorconductive_iron",
	"fortifypulsating_iron",
	"polished_armorpulsating_iron",
	"fortifyknightslime",
	"polished_armorknightslime",
	"fortifybronze",
	"polished_armorbronze",
	"fortifyelectrum",
	"polished_armorelectrum",
	"fortifyosmium",
	"polished_armorosmium",
	"fortifyblackquartz_plustic",
	"polished_armorblackquartz_plustic",
	"fortifycertusquartz_plustic",
	"polished_armorcertusquartz_plustic"
] as string[];

val tierThreeMetals = [
	"fortifysoularium",
	"polished_armorsoularium",
	"fortifyenergetic_alloy",
	"polished_armorenergetic_alloy",
	"fortifysteel",
	"polished_armorsteel",
	"fortifyinvar",
	"polished_armorinvar",
	"fortifyfluixcrystal_plustic",
	"polished_armorfluixcrystal_plustic",
	"fortifyrestonia_actadd_plustic",
	"polished_armorrestonia_actadd_plustic",
	"fortifyiridium",
	"polished_armoriridium",
	"fortifyenori_actadd_plustic",
	"polished_armorenori_actadd_plustic",
	"fortifynickel",
	"polished_armornickel",
	"fortifyvoid_actadd_plustic",
	"polished_armorvoid_actadd_plustic"
] as string[];

val tierFourMetals = [
	"fortifyvibrant_alloy",
	"polished_armorvibrant_alloy",
	"fortifydark_steel",
	"polished_armordark_steel",
	"fortifyend_steel",
	"polished_armorend_steel",
	"fortifycobalt",
	"polished_armorcobalt",
	"fortifyardite",
	"polished_armorardite",
	"fortifyosmiridium",
	"polished_armorosmiridium",
	"fortifyemeradic_actadd_plustic",
	"polished_armoremeradic_actadd_plustic",
	"fortifydiamatine_actadd_plustic",
	"polished_armordiamatine_actadd_plustic",
	"fortifyalumite",
	"polished_armoralumite",
	"fortifypalis_actadd_plustic",
	"polished_armorpalis_actadd_plustic",
	"fortifyemerald_plustic",
	"polished_armoremerald_plustic"
] as string[];

val tierFiveMetals = [
	"fortifymanyullyn",
	"polished_armormanyullyn",
	"fortifyosgloglas",
	"polished_armorosgloglas",
	"fortifymirion",
	"polished_armormirion"
] as string[];


for metal in tierOneMetals {
    addModifierLock(metal, materials.metal1);
}

for metal in tierTwoMetals {
    addModifierLock(metal, materials.metal2);
}

for metal in tierThreeMetals {
    addModifierLock(metal, materials.metal3);
}

for metal in tierFourMetals {
    addModifierLock(metal, materials.metal4);
}

for metal in tierFiveMetals {
    addModifierLock(metal, materials.metal5);
}

addModifierLock("fortifywood", materials.wood);
addModifierLock("polished_armorwood", materials.wood);
addModifierLock("fortifystone", materials.stone);
addModifierLock("polished_armorstone", materials.stone);
addModifierLock("fortifyflint", materials.flint);
addModifierLock("polished_armorflint", materials.flint);
addModifierLock("fortifybone", materials.bone);
addModifierLock("polished_armorbone", materials.bone);
addModifierLock("fortifypaper", materials.paper);
addModifierLock("polished_armorpaper", materials.paper);
addModifierLock("fortifycactus", materials.cactus);
addModifierLock("polished_armorcactus", materials.cactus);
addModifierLock("fortifyfirewood", materials.firewood);
addModifierLock("polished_armorfirewood", materials.firewood);
addModifierLock("fortifyslime", materials.slime);
addModifierLock("polished_armorslime", materials.slime);
addModifierLock("fortifyblueslime", materials.blueslime);
addModifierLock("polished_armorblueslime", materials.blueslime);
addModifierLock("fortifymagmaslime", materials.magmaslime);
addModifierLock("polished_armormagmaslime", materials.magmaslime);
addModifierLock("fortifylivingwood_plustic", materials.livingwood_plustic);
addModifierLock("polished_armorlivingwood_plustic", materials.livingwood_plustic);
addModifierLock("fortifyrefinedobsidian", materials.refinedobsidian);
addModifierLock("polished_armorrefinedobsidian", materials.refinedobsidian);
addModifierLock("fortifyrefinedglowstone", materials.refinedglowstone);
addModifierLock("polished_armorrefinedglowstone", materials.refinedglowstone);
addModifierLock("fortifyobsidian", materials.obsidian);
addModifierLock("polished_armorobsidian", materials.obsidian);
addModifierLock("fortifyprismarine", materials.prismarine);
addModifierLock("polished_armorprismarine", materials.prismarine);
addModifierLock("fortifysponge", materials.sponge);
addModifierLock("polished_armorsponge", materials.sponge);
addModifierLock("fortifynetherrack", materials.netherrack);
addModifierLock("polished_armornetherrack", materials.netherrack);
addModifierLock("fortifyendstone", materials.end);
addModifierLock("polished_armorendstone", materials.end);
addModifierLock("fortifydarkmatter", materials.darkmatter);
addModifierLock("polished_armordarkmatter", materials.darkmatter);
addModifierLock("fortifyredmatter", materials.redmatter);
addModifierLock("polished_armorredmatter", materials.redmatter);
addModifierLock("fortifyinfinity_avaritia_plustic", materials.infinity_avaritia_plustic);
addModifierLock("polished_armorinfinity_avaritia_plustic", materials.infinity_avaritia_plustic);
addModifierLock("fortifythaumium", materials.thaumium);
addModifierLock("polished_armorthaumium", materials.thaumium);
addModifierLock("fortifymanasteel", materials.manasteel);
addModifierLock("polished_armormanasteel", materials.manasteel);
addModifierLock("fortifyterrasteel", materials.terrasteel);
addModifierLock("polished_armorterrasteel", materials.terrasteel);
addModifierLock("fortifyelementium", materials.elementium);
addModifierLock("polished_armorelementium", materials.elementium);
addModifierLock("fortifybismuth", materials.bismuth);
addModifierLock("polished_armorbismuth", materials.bismuth);
addModifierLock("fortifyalkimium", materials.alkimium);
addModifierLock("polished_armoralkimium", materials.alkimium);
addModifierLock("fortifyextrabotany:ingotshadowium", materials.shadowium);
addModifierLock("polished_armorextrabotany:ingotshadowium", materials.shadowium);
addModifierLock("fortifyextrabotany:ingotorichalcos", materials.orichalcos);
addModifierLock("polished_armorextrabotany:ingotorichalcos", materials.orichalcos);
addModifierLock("fortifybloodbronze", materials.bloodbronze);
addModifierLock("polished_armorbloodbronze", materials.bloodbronze);

addModifierLock("fortifyaer_thaumium", materials.aer_thaumium);
addModifierLock("polished_armoraer_thaumium", materials.aer_thaumium);

addModifierLock("fortifyignis_thaumium", materials.ignis_thaumium);
addModifierLock("polished_armorignis_thaumium", materials.ignis_thaumium);

addModifierLock("fortifyaqua_thaumium", materials.aqua_thaumium);
addModifierLock("polished_armoraqua_thaumium", materials.aqua_thaumium);

addModifierLock("fortifyterra_thaumium", materials.terra_thaumium);
addModifierLock("polished_armorterra_thaumium", materials.terra_thaumium);

addModifierLock("fortifyordo_thaumium", materials.ordo_thaumium);
addModifierLock("polished_armorordo_thaumium", materials.ordo_thaumium);

addModifierLock("fortifyperditio_thaumium", materials.perditio_thaumium);
addModifierLock("polished_armorperditio_thaumium", materials.perditio_thaumium);