import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

import mods.botania.Orechid;
import mods.botania.OrechidIgnem;
import mods.botania.ElvenTrade;
import mods.botania.ManaInfusion;

mods.jei.JEI.removeAndHide(<botania:manasteelpick>);
mods.jei.JEI.removeAndHide(<botania:manasteelshovel>);
mods.jei.JEI.removeAndHide(<botania:manasteelaxe>);
mods.jei.JEI.removeAndHide(<botania:manasteelsword>);
mods.jei.JEI.removeAndHide(<botania:manasteelshears>);

mods.jei.JEI.removeAndHide(<botania:elementiumpick>);
mods.jei.JEI.removeAndHide(<botania:elementiumshovel>);
mods.jei.JEI.removeAndHide(<botania:elementiumaxe>);
mods.jei.JEI.removeAndHide(<botania:elementiumsword>);
mods.jei.JEI.removeAndHide(<botania:elementiumshears>);

mods.jei.JEI.removeAndHide(<botania:glasspick>);
mods.jei.JEI.removeAndHide(<botania:livingwoodbow>);
mods.jei.JEI.removeAndHide(<botania:crystalbow>);

//Disable Botania Magnet rings
mods.jei.JEI.removeAndHide(<botania:magnetring>);
mods.jei.JEI.removeAndHide(<botania:magnetringgreater>);


mods.jei.JEI.removeAndHide(<botania:flighttiara>);

mods.jei.JEI.removeAndHide(<extrabotany:cosmeticmaidhelm>);
mods.jei.JEI.removeAndHide(<extrabotany:cosmeticmaidchest>);
mods.jei.JEI.removeAndHide(<extrabotany:cosmeticmaidlegs>);
mods.jei.JEI.removeAndHide(<extrabotany:cosmeticmaidboots>);


var crates = [
	<botania_tweaks:dire_crafty_crate>,
	<botania_tweaks:basic_extended_crafty_crate>,
	<botania_tweaks:advanced_extended_crafty_crate>,
	<botania_tweaks:elite_extended_crafty_crate>,
	<botania_tweaks:ultimate_extended_crafty_crate>
] as IItemStack[];

for crate in crates {
	ElvenTrade.removeRecipe(crate);
	mods.jei.JEI.hide(crate);
}


var ores = [
	<ore:oreIron>,
	<ore:oreLead>,
	<ore:oreRedstone>,
	<ore:oreSilver>,
	<ore:oreTungsten>,
	<ore:oreGold>,
	<ore:oreRuby>,
	<ore:oreSapphire>,
	<ore:oreGalena>,
	<ore:oreDiamond>,
	<ore:oreAmber>,
	<ore:oreLapis>,
	<ore:oreCoal>,
	<ore:oreTin>,
	<ore:oreCopper>,
	<ore:oreOsmium>,
	<ore:oreQuartzBlack>,
	<ore:oreCertusQuartz>,
	<ore:oreCinnabar>,
	<ore:oreEmerald>
] as IOreDictEntry[];

for ore in ores {
	Orechid.removeOre(ore);
}

var netherOres = [
	<ore:oreQuartz>,
	<ore:oreCobalt>,
	<ore:oreArdite>
] as IOreDictEntry[];

for ore in netherOres {
	OrechidIgnem.removeOre(ore);
}


var newOres = {
	<ore:oreAquamarine> : 50,
	<ore:sand> : 3000
} as int[IOreDictEntry];

for ore, value in newOres {
	Orechid.addOre(ore, value);
}


ManaInfusion.removeRecipe(<minecraft:wheat_seeds>);
ManaInfusion.removeRecipe(<minecraft:potato>);
ManaInfusion.removeRecipe(<minecraft:carrot>);
ManaInfusion.removeRecipe(<minecraft:beetroot_seeds>);
ManaInfusion.removeRecipe(<minecraft:melon_seeds>);
ManaInfusion.removeRecipe(<minecraft:pumpkin_seeds>);
ManaInfusion.removeRecipe(<minecraft:dye:3>);
ManaInfusion.removeRecipe(<minecraft:slime_ball>);
ManaInfusion.removeRecipe(<minecraft:cactus>);

ManaInfusion.addAlchemy(<minecraft:wheat_seeds>, <minecraft:dye:3>, 20000);
ManaInfusion.addAlchemy(<minecraft:potato>, <minecraft:wheat>, 20000);
ManaInfusion.addAlchemy(<minecraft:carrot>, <minecraft:potato>, 20000);
ManaInfusion.addAlchemy(<minecraft:beetroot_seeds>, <minecraft:carrot>, 20000);
ManaInfusion.addAlchemy(<minecraft:melon_seeds>, <minecraft:beetroot_seeds>, 20000);
ManaInfusion.addAlchemy(<minecraft:pumpkin_seeds>, <minecraft:melon_seeds>, 20000);
ManaInfusion.addAlchemy(<actuallyadditions:item_flax_seed>, <minecraft:pumpkin_seeds>, 20000);
ManaInfusion.addAlchemy(<actuallyadditions:item_rice_seed>, <actuallyadditions:item_flax_seed>, 20000);
ManaInfusion.addAlchemy(<actuallyadditions:item_canola_seed>, <actuallyadditions:item_rice_seed>, 20000);
ManaInfusion.addAlchemy(<actuallyadditions:item_coffee_seed>, <actuallyadditions:item_canola_seed>, 20000);
ManaInfusion.addAlchemy(<minecraft:dye:3>, <actuallyadditions:item_coffee_seed>, 20000);

ManaInfusion.addAlchemy(<minecraft:slime_ball>, <minecraft:reeds>, 20000);
ManaInfusion.addAlchemy(<minecraft:reeds>, <minecraft:cactus>, 20000);
ManaInfusion.addAlchemy(<minecraft:cactus>, <minecraft:slime_ball>, 20000);