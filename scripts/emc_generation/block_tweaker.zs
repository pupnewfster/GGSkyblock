#loader contenttweaker

import scripts.emc_generation.cot_lookup.colorLookup;
import scripts.emc_generation.cot_classes.block_info;

import mods.contenttweaker.BlockMaterial;

val customBlocks as block_info[] = [
    block_info("pure_tier16", -1, null, 13),
    block_info("imbued_tier16", -1, null, 15),

    block_info("tier18_blood_block", colorLookup.blood, null, 10),
    block_info("imbued_tier22", colorLookup.tier22, "contenttweaker:blocks/imbued_tier16", 15),
    block_info("tier24_composting_block", colorLookup.tier24, "minecraft:blocks/dirt", "shovel", 3, <blockmaterial:ground>),
    block_info("tier25_26_alloy_block", colorLookup.tier25_26alloy, "contenttweaker:blocks/base_block"),
    block_info("sliced_tier32_block", 0x518DE8, "contenttweaker:blocks/base_block"),
    block_info("imbued_tier32_block", 0x7A7AFF, "contenttweaker:blocks/base_block"),
    block_info("bloody_tier33_block", colorLookup.bloody_tier33, "contenttweaker:blocks/base_block"),
    block_info("tier33_composting_block", colorLookup.bloody_tier33, "minecraft:blocks/dirt", "shovel", 3, <blockmaterial:ground>),
    block_info("compressed_elvish_tier34", 0x33E896, "contenttweaker:blocks/base_block")
];

for block in customBlocks {
    block.createBlock();
}

val storageBlocks as string[] = ["tier16", "tier17", "tier18", "tier22", "tier24", "tier32", "tier35", "tier36"];

for name in storageBlocks {
    block_info(name + "_block", colorLookup[name], "contenttweaker:blocks/base_block").createBlock();
}