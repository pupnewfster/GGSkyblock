#loader contenttweaker

import scripts.emc_generation.cot_lookup.colorLookup;

import mods.contenttweaker.IItemColorSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;

import crafttweaker.item.IItemStack;


var metallicTier22 = VanillaFactory.createItem("metallic_tier22_seeds");	
metallicTier22.setTextureLocation(ResourceLocation.create("mysticalagriculture:items/manyullyn_seeds"));
metallicTier22.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.tier1);
});
metallicTier22.register();

var tier23Alloy = VanillaFactory.createItem("tier23alloy");	
tier23Alloy.setTextureLocation(ResourceLocation.create("base:items/plate"));
tier23Alloy.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.tier23);
});
tier23Alloy.register();

var compostingTier24 = VanillaFactory.createItem("composting_tier24_seeds");	
compostingTier24.setTextureLocation(ResourceLocation.create("mysticalagriculture:items/redstone_alloy_seeds"));
compostingTier24.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(0xCD853F);
});
compostingTier24.register();

var tier28Elven = VanillaFactory.createItem("tier28_elven");
tier28Elven.setTextureLocation(ResourceLocation.create("mysticalagriculture:items/pulsating_iron_essence"));
tier28Elven.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.aqua);
});
tier28Elven.setGlowing(true);
tier28Elven.register();


createLimeItem("reconstructed_tier24", "redstone_alloy_essence", false);
createLimeItem("empowered_tier25", "conductive_iron_essence", true);
createLimeItem("reconstructed_tier27_seeds", "dark_steel_seeds", false);
createLimeItem("empowered_tier27_seeds", "dark_steel_seeds", true);
createLimeItem("tier28_alchemy", "pulsating_iron_essence", true);


function createLimeItem(name as string, item as string, glowing as bool) {
    var limeItem = VanillaFactory.createItem(name);
    limeItem.setTextureLocation(ResourceLocation.create("mysticalagriculture:items/" + item));
    limeItem.setItemColorSupplier(function(stack as IItemStack, tint as int) {
    	return Color.fromInt(colorLookup.lime);
    });
    limeItem.setGlowing(glowing);
    limeItem.register();
}


createBloodItem("blood_tier23_seeds", "electrical_steel_seeds");
createBloodItem("blood_tier25_seeds", "conductive_iron_seeds");
createBloodItem("bloody_tier27", "dark_steel_essence");

function createBloodItem(name as string, texture as string) {
	var bloodItem = VanillaFactory.createItem(name);
	bloodItem.setTextureLocation(ResourceLocation.create("mysticalagriculture:items/" + texture));
	bloodItem.setItemColorSupplier(function(stack as IItemStack, tint as int) {
		return Color.fromInt(colorLookup.blood);
	});
	bloodItem.register();
}


createTier30Item("crystal");
createTier30Item("shard");
createTier30Item("clump");
createTier30Item("dust");

function createTier30Item(type as string) {
	var tier30Item = VanillaFactory.createItem("tier30_" + type);
	tier30Item.setTextureLocation(ResourceLocation.create("jaopca:items/" + type));
    tier30Item.setItemColorSupplier(function(stack as IItemStack, tint as int) {
    	return Color.fromInt(colorLookup.tier30);
    });
	tier30Item.register();
}