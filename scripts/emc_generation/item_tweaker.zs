#loader contenttweaker

import scripts.emc_generation.cot_lookup.colorLookup;
import scripts.emc_generation.cot_classes.item_info;

function baseItem(name as string) as string {
    return "base:items/" + name;
}

function mysticalItem(name as string) as string {
    return "mysticalagriculture:items/" + name;
}

val customItems as item_info[] = [
    item_info("plated_tier33_seeds", 0xF200FF, "tconstruct:items/cast"),
    item_info("empowered_plated_tier33_seeds", colorLookup.tier33, "tconstruct:items/cast", true),

    item_info("tier34_seed_component", colorLookup.tier34, "enderio:items/item_material_plantbrown"),
    item_info("reconstructed_tier34_component", 0x6AFF26, "enderio:items/item_material_plantbrown"),
    item_info("charred_tier34_part", 0x252525, "enderio:items/item_material_plantbrown"),

    //Items with a texture from Base
    item_info("tier23alloy", colorLookup.tier23, baseItem("plate")),
    item_info("composted_tier33", 0x894430, baseItem("cluster")),
    item_info("bloody_composted_tier33", 0xAD4B2E, baseItem("cluster"), true),
    item_info("tier35_beam", colorLookup.tier35, baseItem("beam")),
    item_info("elvish_tier35_beam", colorLookup.tier35, baseItem("beam"), true),
    item_info("tier35_bolt", colorLookup.tier35, baseItem("bolt")),
    item_info("reconstructed_tier35_bolt", colorLookup.tier35, baseItem("bolt"), true),
    item_info("tier35_gear", colorLookup.tier35, baseItem("gear")),
    item_info("crushed_tier35_gear", colorLookup.tier35, baseItem("dust")),
    item_info("enriched_crushed_tier35_gear", colorLookup.tier35, baseItem("dust"), true),

    item_info("tier35_plate", colorLookup.tier35, baseItem("plate")),
    item_info("tier35_shard", colorLookup.tier35, baseItem("shard")),
    item_info("tier35_casing", colorLookup.tier35, baseItem("casing")),
    item_info("frozen_tier35_casing", colorLookup.tier35, baseItem("casing"), true),
    item_info("tier35_crystal", colorLookup.tier35, baseItem("crystal")),
    item_info("reconstructed_tier35_crystal", colorLookup.tier35, baseItem("crystal"), true),
    item_info("tier35_washer", colorLookup.tier35, baseItem("record_outside")),
    item_info("infused_tier35_washer", colorLookup.tier35, baseItem("record_outside"), true),
    item_info("tier36_beam", colorLookup.tier36, baseItem("beam")),
    item_info("tier36_bolt", colorLookup.tier36, baseItem("bolt")),
    item_info("tier36_gear", colorLookup.tier36, baseItem("gear")),
    item_info("tier36_rod", colorLookup.tier36, baseItem("rod")),
    item_info("tier36_casing", colorLookup.tier36_37between, baseItem("casing")),
    item_info("tier36_powder", colorLookup.tier36_37between, baseItem("dirty_dust")),
    item_info("tier36_plate", colorLookup.tier36_37between, baseItem("plate")),
    item_info("tier36_cluster", colorLookup.tier36_37between, baseItem("cluster")),

    //Items with a texture from Mystical Agriculture
    item_info("reconstructed_tier24", colorLookup.lime, mysticalItem("redstone_alloy_essence")),
    item_info("empowered_tier25", colorLookup.lime, mysticalItem("conductive_iron_essence"), true),
    item_info("reconstructed_tier27_seeds", colorLookup.lime, mysticalItem("dark_steel_seeds")),
    item_info("empowered_tier27_seeds", colorLookup.lime, mysticalItem("dark_steel_seeds"), true),
    item_info("tier28_alchemy", colorLookup.lime, mysticalItem("pulsating_iron_essence"), true),
    item_info("metallic_tier22_seeds", colorLookup.tier1, mysticalItem("manyullyn_seeds")),
    item_info("composting_tier24_seeds", 0xCD853F, mysticalItem("redstone_alloy_seeds")),
    item_info("tier28_elven", colorLookup.aqua, mysticalItem("pulsating_iron_essence"), true),
    item_info("blood_tier23_seeds", colorLookup.blood, mysticalItem("electrical_steel_seeds")),
    item_info("blood_tier25_seeds", colorLookup.blood, mysticalItem("conductive_iron_seeds")),
    item_info("bloody_tier27", colorLookup.blood, mysticalItem("dark_steel_essence")),
    item_info("bloody_tier33", colorLookup.blood, mysticalItem("elementium_essence")),
    item_info("mundane_tier33_seeds", colorLookup.tier32, mysticalItem("elementium_seeds")),
    item_info("mana_infused_tier34", colorLookup.aqua, mysticalItem("terrasteel_essence")),
    item_info("elvish_tier34", colorLookup.aqua, mysticalItem("terrasteel_essence"), true),
    item_info("extracted_tier37_essence", colorLookup.tier37, mysticalItem("osmium_essence")),
    item_info("infused_tier37_essence", colorLookup.tier37, mysticalItem("osmium_essence"), true)
];

for item in customItems {
    item.createItem();
}

val jaopcaItems as string[] = [
    "tier30_crystal",
    "tier30_shard",
    "tier30_clump",
    "tier30_dust"
];

for item in jaopcaItems {
    item_info(item, colorLookup[item.split("_")[0]], "jaopca:items/" + item.split("_")[1]).createItem();
}