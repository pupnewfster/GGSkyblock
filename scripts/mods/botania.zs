#modloaded botania

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

import mods.botania.Orechid;
import mods.botania.OrechidIgnem;
import mods.botania.ElvenTrade;

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
	<ore:oreAquamarine> : 2970
} as int[IOreDictEntry];

for ore, value in newOres {
	Orechid.addOre(ore, value);
}


var newNetherOres = {
	<ore:oreSphalerite> : 128,
	<ore:orePyrite> : 128
} as int[IOreDictEntry];

for ore, value in newNetherOres {
	OrechidIgnem.addOre(ore, value);
}