#loader contenttweaker

import scripts.emc_generation.cot_lookup.colorLookup;

import mods.contenttweaker.IBlockColorSupplier;
import mods.contenttweaker.IItemColorSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockState;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.BlockPos;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.world.IBlockAccess;

createBlock("pure_tier16", 13);
createBlock("imbued_tier16", 15);

function createBlock(name as string, light as int) {
    var block = VanillaFactory.createBlock(name, <blockmaterial:iron>);
    block.setToolClass("pickaxe");
    block.setToolLevel(5);
    block.setLightValue(light);
    block.register();
}


var tier18BloodBlock = VanillaFactory.createBlock("tier18_blood_block", <blockmaterial:iron>);
tier18BloodBlock.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.blood);
});
tier18BloodBlock.setBlockColorSupplier(function(state as BlockState, access as IBlockAccess, pos as BlockPos, tint as int) {
	return Color.fromInt(colorLookup.blood);
});
tier18BloodBlock.setToolClass("pickaxe");
tier18BloodBlock.setToolLevel(5);
tier18BloodBlock.setLightValue(10);
tier18BloodBlock.register();


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


var tier24CompostingBlock = VanillaFactory.createBlock("tier24_composting_block", <blockmaterial:ground>);
tier24CompostingBlock.setTextureLocation(ResourceLocation.create("minecraft:blocks/dirt"));
tier24CompostingBlock.setItemColorSupplier(function(stack as IItemStack, tint as int) {
	return Color.fromInt(colorLookup.tier24);
});
tier24CompostingBlock.setBlockColorSupplier(function(state as BlockState, access as IBlockAccess, pos as BlockPos, tint as int) {
	return Color.fromInt(colorLookup.tier24);
});
tier24CompostingBlock.setToolClass("shovel");
tier24CompostingBlock.setToolLevel(3);
tier24CompostingBlock.register();


static customBlocks as int[string] = {
	tier16_block : colorLookup.tier16,
	tier17_block : colorLookup.tier17,
    tier18_block : colorLookup.tier18,
	tier22_block : colorLookup.tier22,
	tier24_block : colorLookup.tier24,

	tier25_26_alloy_block : colorLookup.tier25_26alloy
} as int[string];

for name in customBlocks {
	var block = VanillaFactory.createBlock(name, <blockmaterial:iron>);
	block.setTextureLocation(ResourceLocation.create("contenttweaker:blocks/base_block"));
	block.setItemColorSupplier(function(stack as IItemStack, tint as int) {
		return Color.fromInt(scripts.emc_generation.block_tweaker.customBlocks[stack.definition.id.substring(15)]);
	});
	block.setBlockColorSupplier(function(state as BlockState, access as IBlockAccess, pos as BlockPos, tint as int) {
		return Color.fromInt(scripts.emc_generation.block_tweaker.customBlocks[state.block.definition.id.substring(15)]);
	});

    block.setToolClass("pickaxe");
    block.setToolLevel(5);
	block.register();
}