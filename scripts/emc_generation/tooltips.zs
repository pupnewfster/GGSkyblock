import crafttweaker.item.IItemStack;

var info = {
    <mysticalagriculture:iron_essence> : "14",
    <mysticalagriculture:gold_essence> : "256",
    <mysticalagriculture:aluminum_essence> : "341",
    <mysticalagriculture:copper_essence> : "2,048",
    <mysticalagriculture:tin_essence> : "3,520",
    <mysticalagriculture:bronze_essence> : "4,096",
    <mysticalagriculture:zinc_essence> : "8,192",
    <mysticalagriculture:brass_essence> : "17,856",
    <mysticalagriculture:silver_essence> : "41,472",
    //Tier 10
    <mysticalagriculture:lead_essence> : "57,690",
    <mysticalagriculture:steel_essence> : "79,296",
    <mysticalagriculture:nickel_essence> : "tier 12",
    <mysticalagriculture:electrum_essence> : "139,264",
    <mysticalagriculture:tungsten_essence> : "165,888",
    <mysticalagriculture:titanium_essence> : "409,656",
    <mysticalagriculture:chrome_essence> : "442,368",
    <mysticalagriculture:iridium_essence> : "776,352",
    <mysticalagriculture:aluminum_brass_essence> : "1,492,992",
    <mysticalagriculture:knightslime_essence> : "2,794,411",
    //Tier 20
    <mysticalagriculture:ardite_essence> : "3,981,312",
    <mysticalagriculture:cobalt_essence> : "5,971,968",
    <mysticalagriculture:manyullyn_essence> : "12,499,200",
    <mysticalagriculture:electrical_steel_essence> : "16,490,261",
    <mysticalagriculture:redstone_alloy_essence> : "24,998,400",
    <mysticalagriculture:conductive_iron_essence> : "39,463,200",
    <mysticalagriculture:soularium_essence> : "53,747,712",
    <mysticalagriculture:dark_steel_essence> : "93,542,400",
    <mysticalagriculture:pulsating_iron_essence> : "171,601,920",
    <mysticalagriculture:energetic_alloy_essence> : "398,997,900",
    //Tier 30
    <mysticalagriculture:vibrant_alloy_essence> : "430,055,424",
    <mysticalagriculture:end_steel_essence> : "748,077,120",
    <mysticalagriculture:manasteel_essence> : "1,720,221,696",
    <mysticalagriculture:elementium_essence> : "3,746,018,080",
    <mysticalagriculture:terrasteel_essence> : "5,483,151,360",
    <mysticalagriculture:thaumium_essence> : "13,761,773,576",
    <mysticalagriculture:void_metal_essence> : "21,932,605,440",
    <mysticalagriculture:osmium_essence> : "41,211,617,888",
    <mysticalagriculture:glowstone_ingot_essence> : "66,120,302,592",
    <mysticalagriculture:refined_obsidian_essence> : "370,595,077,488",
    //Tier 40
    <mysticalagriculture:alumite_essence> : "37,629,849,600,000",
    <mysticalagriculture:starmetal_essence> : "863,596,339,200,000"
} as string[IItemStack];

for key, value in info {
    mods.jei.JEI.addDescription(key, "Produces: " + value + " EMC");
    key.addTooltip(format.yellow("EMC Produced: ") + format.white(value));
}