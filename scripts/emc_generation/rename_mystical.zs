import crafttweaker.item.IItemStack;

recipes.removeByRegex("mysticalagriculture:.*");

var toRename = {
    "1" : [<mysticalagriculture:iron_seeds>, <mysticalagriculture:iron_essence>, <mysticalagriculture:iron_crop>],
    "2" : [<mysticalagriculture:gold_seeds>, <mysticalagriculture:gold_essence>, <mysticalagriculture:gold_crop>],
    "3" : [<mysticalagriculture:aluminum_seeds>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_crop>],
    "4" : [<mysticalagriculture:copper_seeds>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_crop>],
    "5" : [<mysticalagriculture:tin_seeds>, <mysticalagriculture:tin_essence>, <mysticalagriculture:tin_crop>],
    "6" : [<mysticalagriculture:bronze_seeds>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:bronze_crop>],
    "7" : [<mysticalagriculture:zinc_seeds>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_crop>],
    "8" : [<mysticalagriculture:brass_seeds>, <mysticalagriculture:brass_essence>, <mysticalagriculture:brass_crop>],
    "9" : [<mysticalagriculture:silver_seeds>, <mysticalagriculture:silver_essence>, <mysticalagriculture:silver_crop>],
    "10" : [<mysticalagriculture:lead_seeds>, <mysticalagriculture:lead_essence>, <mysticalagriculture:lead_crop>],
    "11" : [<mysticalagriculture:steel_seeds>, <mysticalagriculture:steel_essence>, <mysticalagriculture:steel_crop>],
    "12" : [<mysticalagriculture:nickel_seeds>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:nickel_crop>],
    "13" : [<mysticalagriculture:electrum_seeds>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:electrum_crop>],
    "14" : [<mysticalagriculture:tungsten_seeds>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:tungsten_crop>],
    "15" : [<mysticalagriculture:titanium_seeds>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_crop>],
    "16" : [<mysticalagriculture:chrome_seeds>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_crop>],
    "17" : [<mysticalagriculture:iridium_seeds>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_crop>],
    "18" : [<mysticalagriculture:aluminum_brass_seeds>, <mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_crop>],
    "19" : [<mysticalagriculture:knightslime_seeds>, <mysticalagriculture:knightslime_essence>, <mysticalagriculture:knightslime_crop>],
    "20" : [<mysticalagriculture:ardite_seeds>, <mysticalagriculture:ardite_essence>, <mysticalagriculture:ardite_crop>],
    "21" : [<mysticalagriculture:cobalt_seeds>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:cobalt_crop>],
    "22" : [<mysticalagriculture:manyullyn_seeds>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_crop>],
    "23" : [<mysticalagriculture:electrical_steel_seeds>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:electrical_steel_crop>],
    "24" : [<mysticalagriculture:redstone_alloy_seeds>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:redstone_alloy_crop>],
    "25" : [<mysticalagriculture:conductive_iron_seeds>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_crop>],
    "26" : [<mysticalagriculture:soularium_seeds>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:soularium_crop>],
    "27" : [<mysticalagriculture:dark_steel_seeds>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:dark_steel_crop>],
    "28" : [<mysticalagriculture:pulsating_iron_seeds>, <mysticalagriculture:pulsating_iron_essence>, <mysticalagriculture:pulsating_iron_crop>],
    "29" : [<mysticalagriculture:energetic_alloy_seeds>, <mysticalagriculture:energetic_alloy_essence>, <mysticalagriculture:energetic_alloy_crop>],
    "30" : [<mysticalagriculture:vibrant_alloy_seeds>, <mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:vibrant_alloy_crop>],
    "31" : [<mysticalagriculture:end_steel_seeds>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:end_steel_crop>],
    "32" : [<mysticalagriculture:manasteel_seeds>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_crop>],
    "33" : [<mysticalagriculture:elementium_seeds>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:elementium_crop>],
    "34" : [<mysticalagriculture:terrasteel_seeds>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:terrasteel_crop>],
    "35" : [<mysticalagriculture:thaumium_seeds>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_crop>],
    "36" : [<mysticalagriculture:void_metal_seeds>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_crop>],
    "37" : [<mysticalagriculture:osmium_seeds>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_crop>],
    "38" : [<mysticalagriculture:glowstone_ingot_seeds>, <mysticalagriculture:glowstone_ingot_essence>, <mysticalagriculture:glowstone_ingot_crop>],
    "39" : [<mysticalagriculture:refined_obsidian_seeds>, <mysticalagriculture:refined_obsidian_essence>, <mysticalagriculture:refined_obsidian_crop>],
    "40" : [<mysticalagriculture:alumite_seeds>, <mysticalagriculture:alumite_essence>, <mysticalagriculture:alumite_crop>],
    "41" : [<mysticalagriculture:starmetal_seeds>, <mysticalagriculture:starmetal_essence>, <mysticalagriculture:starmetal_crop>]
} as IItemStack[][string];

for key, value in toRename {
    value[0].displayName = "Tier " + key + " EMC Seeds";
    value[1].displayName = "Tier " + key + " EMC Essence";
    value[2].displayName = "Tier " + key + " EMC Crop";
}