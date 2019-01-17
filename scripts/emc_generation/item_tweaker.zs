#loader contenttweaker

import mods.contenttweaker.IBlockColorSupplier;
import mods.contenttweaker.IItemColorSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;

import mods.contenttweaker.BlockMaterial;

import crafttweaker.world.IBlockAccess;
import mods.contenttweaker.BlockState;
import mods.contenttweaker.BlockPos;

global compressedItemMap as int[string] = {
    compressed_tier1 : colorLookup.tier1,
    compressed_sugar : -1,
	compressed_lp : colorLookup.blood
} as int[string];

for name in compressedItemMap {
	var compressedItem = VanillaFactory.createItem(name);	
	compressedItem.setTextureLocation(ResourceLocation.create("contenttweaker:items/infuser_compressed"));
	compressedItem.setItemColorSupplier(function(stack as IItemStack, tint as int) {
		return Color.fromInt(compressedItemMap[stack.definition.id.substring(15)]);
	});
	compressedItem.register();
}


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



bloodSeed("blood_tier23_seeds", "electrical_steel_seeds");

var compostingTier24 = VanillaFactory.createItem("composting_tier24_seeds");	
compostingTier24.setTextureLocation(ResourceLocation.create("mysticalagriculture:items/redstone_alloy_seeds"));
compostingTier24.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(0xCD853F);
});
compostingTier24.register();


bloodSeed("blood_tier25_seeds", "conductive_iron_seeds");



function bloodSeed(name as string, texture as string) {
	var bloodSeed = VanillaFactory.createItem(name);	
	bloodSeed.setTextureLocation(ResourceLocation.create("mysticalagriculture:items/" + texture));
	bloodSeed.setItemColorSupplier(function(stack as IItemStack, tint as int) {
		return Color.fromInt(colorLookup.blood);
	});
	bloodSeed.register();
}



var reconstructedTier24 = VanillaFactory.createItem("reconstructed_tier24");	
reconstructedTier24.setTextureLocation(ResourceLocation.create("mysticalagriculture:items/redstone_alloy_essence"));
reconstructedTier24.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.lime);
});
reconstructedTier24.register();



var empoweredTier25 = VanillaFactory.createItem("empowered_tier25");	
empoweredTier25.setTextureLocation(ResourceLocation.create("mysticalagriculture:items/conductive_iron_essence"));
empoweredTier25.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.lime);
});
empoweredTier25.setGlowing(true);
empoweredTier25.register();



var reconstructedTier27 = VanillaFactory.createItem("reconstructed_tier27_seeds");	
reconstructedTier27.setTextureLocation(ResourceLocation.create("mysticalagriculture:items/dark_steel_seeds"));
reconstructedTier27.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.lime);
});
reconstructedTier27.register();

var empoweredTier27 = VanillaFactory.createItem("empowered_tier27_seeds");	
empoweredTier27.setTextureLocation(ResourceLocation.create("mysticalagriculture:items/dark_steel_seeds"));
empoweredTier27.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.lime);
});
empoweredTier27.setGlowing(true);
empoweredTier27.register();


bloodSeed("bloody_tier27", "dark_steel_essence");



var tier28Alchemy = VanillaFactory.createItem("tier28_alchemy");	
tier28Alchemy.setTextureLocation(ResourceLocation.create("mysticalagriculture:items/pulsating_iron_essence"));
tier28Alchemy.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.lime);
});
tier28Alchemy.setGlowing(true);
tier28Alchemy.register();


var tier28Elven = VanillaFactory.createItem("tier28_elven");	
tier28Elven.setTextureLocation(ResourceLocation.create("mysticalagriculture:items/pulsating_iron_essence"));
tier28Elven.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.aqua);
});
tier28Elven.setGlowing(true);
tier28Elven.register();




var tier30Crystal = VanillaFactory.createItem("tier30_crystal");	
tier30Crystal.setTextureLocation(ResourceLocation.create("jaopca:items/crystal"));
tier30Crystal.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.tier30);
});
tier30Crystal.register();

var tier30Shard = VanillaFactory.createItem("tier30_shard");	
tier30Shard.setTextureLocation(ResourceLocation.create("jaopca:items/shard"));
tier30Shard.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.tier30);
});
tier30Shard.register();

var tier30Clump = VanillaFactory.createItem("tier30_clump");	
tier30Clump.setTextureLocation(ResourceLocation.create("jaopca:items/clump"));
tier30Clump.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.tier30);
});
tier30Clump.register();


var tier30Dust = VanillaFactory.createItem("tier30_dust");	
tier30Dust.setTextureLocation(ResourceLocation.create("jaopca:items/dust"));
tier30Dust.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.tier30);
});
tier30Dust.register();












var pureTier16Block = VanillaFactory.createBlock("pure_tier16", <blockmaterial:iron>);
pureTier16Block.setToolClass("pickaxe");
pureTier16Block.setToolLevel(5);
pureTier16Block.setLightValue(13);
pureTier16Block.register();

var imbuedTier16Block = VanillaFactory.createBlock("imbued_tier16", <blockmaterial:iron>);
imbuedTier16Block.setToolClass("pickaxe");
imbuedTier16Block.setToolLevel(5);
imbuedTier16Block.setLightValue(15);
imbuedTier16Block.register();


var imbuedTier22Block = VanillaFactory.createBlock("imbued_tier22", <blockmaterial:iron>);
imbuedTier22Block.setTextureLocation(ResourceLocation.create("contenttweaker:blocks/imbued_tier16"));
imbuedTier22Block.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.tier22);
});
imbuedTier22Block.setBlockColorSupplier(function(state as BlockState, access as IBlockAccess, pos as BlockPos, tint as int) {
	return Color.fromInt(colorLookup.tier22);
});
imbuedTier22Block.setToolClass("pickaxe");
imbuedTier22Block.setToolLevel(5);
imbuedTier22Block.setLightValue(15);
imbuedTier22Block.register();




var tier18BloodBlock = VanillaFactory.createBlock("tier18_blood_block", <blockmaterial:iron>);
tier18BloodBlock.setToolClass("pickaxe");
tier18BloodBlock.setToolLevel(5);
tier18BloodBlock.setLightValue(10);
tier18BloodBlock.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.blood);
});
tier18BloodBlock.setBlockColorSupplier(function(state as BlockState, access as IBlockAccess, pos as BlockPos, tint as int) {
	return Color.fromInt(colorLookup.blood);
});
tier18BloodBlock.register();


var tier24CompostingBlock = VanillaFactory.createBlock("tier24_composting_block", <blockmaterial:ground>);
tier24CompostingBlock.setTextureLocation(ResourceLocation.create("minecraft:blocks/dirt"));
tier24CompostingBlock.setToolClass("shovel");
tier24CompostingBlock.setToolLevel(3);
tier24CompostingBlock.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.tier24);
});
tier24CompostingBlock.setBlockColorSupplier(function(state as BlockState, access as IBlockAccess, pos as BlockPos, tint as int) {
	return Color.fromInt(colorLookup.tier24);
});
tier24CompostingBlock.register();




global customBlocks as int[string] = {
	tier16_block : colorLookup.tier16,
	tier17_block : colorLookup.tier17,
    tier18_block : colorLookup.tier18,
	tier22_block : colorLookup.tier22,
	tier24_block : colorLookup.tier24,
	
	tier25_26_alloy_block : colorLookup.tier25_26alloy
} as int[string];


for name in customBlocks {
	var block = VanillaFactory.createBlock(name, <blockmaterial:iron>);
	
	block.setToolClass("pickaxe");
	block.setToolLevel(5);
	
	block.setTextureLocation(ResourceLocation.create("contenttweaker:blocks/base_block"));
	block.setItemColorSupplier(function(stack as IItemStack, tint as int) {
		return Color.fromInt(customBlocks[stack.definition.id.substring(15)]);
	});
	block.setBlockColorSupplier(function(state as BlockState, access as IBlockAccess, pos as BlockPos, tint as int) {
		return Color.fromInt(customBlocks[state.block.definition.id.substring(15)]);
	});
	
	block.register();
}








var customLanterns = ["white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"] as string[];


for name in customLanterns {
	var block = VanillaFactory.createBlock(name + "_sea_lantern", <blockmaterial:glass>);
	block.setBlockHardness(0.3);
	block.setLightValue(1);
	block.setTextureLocation(ResourceLocation.create("contenttweaker:blocks/sea_lanterns/" + name));
	block.register();
}