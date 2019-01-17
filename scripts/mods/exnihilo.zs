#modloaded exnihilocreatio

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.exnihilocreatio.Compost;
import mods.exnihilocreatio.Crook;
import mods.exnihilocreatio.Hammer;
import mods.exnihilocreatio.Heat;
import mods.exnihilocreatio.Sieve;

//Disable hammers in favor of sledgehammers
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_wood>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_stone>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_iron>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_diamond>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:hammer_gold>);

mods.jei.JEI.removeAndHide(<exnihilocreatio:block_auto_sifter>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_waterwheel>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_axle_stone>);
mods.jei.JEI.hide(<exnihilocreatio:block_grinder>);

recipes.remove(<exnihilocreatio:block_end_cake>);
recipes.addShaped("CTEndCake", <exnihilocreatio:block_end_cake>, [[<mekanism:teleportationcore>, <minecraft:end_crystal>, <mekanism:teleportationcore>], [<botania:endereyeblock>, <minecraft:cake>, <botania:endereyeblock>], [<mekanism:teleportationcore>, <minecraft:end_crystal>, <mekanism:teleportationcore>]]);

//Compost.addRecipe(IIngredient input, Float value, String color, IItemStack block);
//Crook.addRecipe(IIngredient input, IItemStack reward, Float chance, Float fortune);
//Hammer.addRecipe(IIngredient input, IItemStack output, Int miningLevel, Float chance, Float fortune);
//Sieve.addStringMeshRecipe(IIngredient block, IItemStack drop, Float chance);
//Sieve.addFlintMeshRecipe(IIngredient block, IItemStack drop, Float chance);
//Sieve.addIronMeshRecipe(IIngredient block, IItemStack drop, Float chance);
//Sieve.addDiamondMeshRecipe(IIngredient block, IItemStack drop, Float chance);



//Custom Hammer Recipes
Hammer.addRecipe(<appliedenergistics2:sky_stone_block>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), 2, 0.5, 0.0);
Hammer.addRecipe(<minecraft:grass>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), 2, 0.5, 0.0);
Hammer.addRecipe(<minecraft:magma>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), 2, 0.5, 0.0);
Hammer.addRecipe(<chisel:waterstone>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), 2, 0.5, 0.0);
Hammer.addRecipe(<minecraft:packed_ice>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), 2, 0.5, 0.0);
Hammer.addRecipe(<minecraft:obsidian>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), 3, 0.5, 0.0);

//Sieve
Sieve.removeAll();

var sieveInfo = {
	<ore:gravel> : {
					<minecraft:flint> : [0.125, 0.25, 0.375, 0.5],
					<exnihilocreatio:item_ore_iron> : [0, 0.1, 0.15, 0.25],
					<exnihilocreatio:item_ore_gold> : [0, 0, 0.05, 0.075]
				} as float[][IItemStack],
	<ore:dust> : {
					<minecraft:redstone> : [0, 0, 0.0125, 0.025]
				} as float[][IItemStack],
	<ore:dirt> : {
					<exnihilocreatio:item_pebble> : [1.2, 2.4, 3.6, 4.8],
					<exnihilocreatio:item_pebble:1> : [0.6, 1.2, 1.8, 2.4],
					<exnihilocreatio:item_pebble:2> : [0.6, 1.2, 1.8, 2.4],
					<exnihilocreatio:item_pebble:3> : [0.6, 1.2, 1.8, 2.4],
					<minecraft:wheat_seeds> : [0.35, 0.7, 0.14, 0.21],
					<minecraft:melon_seeds> : [0.175, 0.35, 0.14, 0.21],
					<minecraft:pumpkin_seeds> : [0.175, 0.35, 0.14, 0.21],
					<exnihilocreatio:item_material:3> : [0.025, 0.05, 0.075, 0.1],
					<exnihilocreatio:item_material:4> : [0.025, 0.05, 0.075, 0.1],
					<exnihilocreatio:item_seed_oak> : [0.025, 0.05, 0.075, 0.1],
					<exnihilocreatio:item_seed_spruce> : [0.025, 0.05, 0.075, 0.1],
					<exnihilocreatio:item_seed_birch> : [0.025, 0.05, 0.075, 0.1],
					<exnihilocreatio:item_seed_jungle> : [0.025, 0.05, 0.075, 0.1],
					<exnihilocreatio:item_seed_acacia> : [0.025, 0.05, 0.075, 0.1],
					<exnihilocreatio:item_seed_darkoak> : [0.025, 0.05, 0.075, 0.1],
					<exnihilocreatio:item_seed_cactus> : [0.025, 0.05, 0.075, 0.1],
					<exnihilocreatio:item_seed_sugarcane> : [0.025, 0.05, 0.075, 0.1],
					<exnihilocreatio:item_seed_carrot> : [0.025, 0.05, 0.075, 0.1],
					<exnihilocreatio:item_seed_potato> : [0.025, 0.05, 0.075, 0.1],
					<actuallyadditions:item_rice_seed> : [0.025, 0.05, 0.075, 0.1],
					<actuallyadditions:item_canola_seed> : [0.025, 0.05, 0.075, 0.1],
					<actuallyadditions:item_flax_seed> : [0.025, 0.05, 0.075, 0.1],
					<actuallyadditions:item_coffee_seed> : [0.025, 0.05, 0.075, 0.1]
				} as float[][IItemStack]
} as float[][IItemStack][IIngredient];


for input, value in sieveInfo {
	for drop, chances in value {
		if (chances[0] > 0) {
			var chance = chances[0] as float;
			while chance > 1.0 {
				Sieve.addStringMeshRecipe(input, drop, 1.0);
				chance -= 1.0;
			}
			Sieve.addStringMeshRecipe(input, drop, chance);
		}
		if (chances.length > 1 && chances[1] > 0) {
			var chance = chances[1] as float;
			while chance > 1.0 {
				Sieve.addFlintMeshRecipe(input, drop, 1.0);
				chance -= 1.0;
			}
			Sieve.addFlintMeshRecipe(input, drop, chance);
		}
		if (chances.length > 2 && chances[2] > 0) {
			var chance = chances[2] as float;
			while chance > 1.0 {
				Sieve.addIronMeshRecipe(input, drop, 1.0);
				chance -= 1.0;
			}
			Sieve.addIronMeshRecipe(input, drop, chance);
		}
		if (chances.length > 3 && chances[3] > 0) {
			var chance = chances[3] as float;
			while chance > 1.0 {
				Sieve.addDiamondMeshRecipe(input, drop, 1.0);
				chance -= 1.0;
			}
			Sieve.addDiamondMeshRecipe(input, drop, chance);
		}
	}
}