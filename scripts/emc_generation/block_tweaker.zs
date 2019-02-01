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

static customBlocks as int[string] = {
    tier18_blood_block : colorLookup.blood,
    imbued_tier22 : colorLookup.tier22,
    tier24_composting_block : colorLookup.tier24,
	tier25_26_alloy_block : colorLookup.tier25_26alloy
} as int[string];


createColoredBlockLight("tier18_blood_block", null, 10);
createColoredBlockLight("imbued_tier22", "contenttweaker:blocks/imbued_tier16", 15);
createColoredBlockFull("tier24_composting_block", "minecraft:blocks/dirt", "shovel", 3, <blockmaterial:ground>, 0);
createColoredBlock("tier25_26_alloy_block", "contenttweaker:blocks/base_block");


function createColoredBlock(name as string, texture as string) {
    createColoredBlockLight(name, texture, 0);
}

function createColoredBlockLight(name as string, texture as string, light as int) {
    createColoredBlockFull(name, texture, "pickaxe", 5, <blockmaterial:iron>, light);
}

function createColoredBlockFull(name as string, texture as string, tool as string, harvestLevel as int, material as BlockMaterial, light as int) {
    var block = VanillaFactory.createBlock(name, material);
    block.setToolClass(tool);
    block.setToolLevel(harvestLevel);
    block.setLightValue(light);

    if (!isNull(texture)) {
        block.setTextureLocation(ResourceLocation.create(texture));
    }
    block.setItemColorSupplier(function(stack as IItemStack, tint as int) {
        return Color.fromInt(scripts.emc_generation.block_tweaker.customBlocks[stack.definition.id.substring(15)]);
    });
    block.setBlockColorSupplier(function(state as BlockState, access as IBlockAccess, pos as BlockPos, tint as int) {
        return Color.fromInt(scripts.emc_generation.block_tweaker.customBlocks[state.block.definition.id.substring(15)]);
    });

    block.register();
}


val storageBlocks = ["tier16", "tier17", "tier18", "tier22", "tier24"] as string[];

for name in storageBlocks {
	var block = VanillaFactory.createBlock(name + "_block", <blockmaterial:iron>);
    block.setToolClass("pickaxe");
    block.setToolLevel(5);

    block.setTextureLocation(ResourceLocation.create("contenttweaker:blocks/base_block"));
    block.setItemColorSupplier(function(stack as IItemStack, tint as int) {
        val id = stack.definition.id.substring(15);
        return Color.fromInt(colorLookup[id.split("_")[0]]);
    });
    block.setBlockColorSupplier(function(state as BlockState, access as IBlockAccess, pos as BlockPos, tint as int) {
        val id = state.block.definition.id.substring(15);
        return Color.fromInt(colorLookup[id.split("_")[0]]);
    });

    block.register();
}