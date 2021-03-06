#priority 400

//Actually Additions
import mods.actuallyadditions.Compost;
import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Empowerer;

//AE2
import mods.appliedenergistics2.Inscriber;

//Astral Sorcery
import mods.astralsorcery.LightTransmutation;

//Blood Magic
import mods.bloodmagic.AlchemyTable;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;

//Botania
import mods.botania.ElvenTrade;
import mods.botania.PureDaisy;
import mods.botania.ManaInfusion;
import mods.botania.RuneAltar;

import mods.botaniatweaks.Agglomeration;

//Ender IO
import mods.enderio.AlloySmelter;
import mods.enderio.SagMill;
import mods.enderio.SliceNSplice;
import mods.enderio.Tank;
import mods.enderio.Vat;

//Extended Crafting
import mods.extendedcrafting.TableCrafting;

//Mekanism
import mods.mekanism.chemical.crystallizer;
import mods.mekanism.chemical.dissolution;
import mods.mekanism.chemical.infuser as chemicalInfuser;
import mods.mekanism.chemical.injection;
import mods.mekanism.chemical.oxidizer;
import mods.mekanism.chemical.washer;
import mods.mekanism.infuser;
import mods.mekanism.combiner;
import mods.mekanism.crusher;
import mods.mekanism.separator;
import mods.mekanism.enrichment;
import mods.mekanism.compressor;
import mods.mekanism.reaction;
import mods.mekanism.purification;
import mods.mekanism.solarneutronactivator;
import mods.mekanism.thermalevaporation;

//Tech Reborn
import mods.techreborn.blastFurnace;
import mods.techreborn.centrifuge;
import mods.techreborn.chemicalReactor;
import mods.techreborn.extractor;
import mods.techreborn.fusionReactor;
import mods.techreborn.implosionCompressor;
import mods.techreborn.industrialElectrolyzer;
import mods.techreborn.industrialGrinder;
import mods.techreborn.rollingMachine;
import mods.techreborn.vacuumFreezer;

//Tinkers
import mods.tconstruct.Alloy;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;

//Infuser custom types
import mods.mekatweaker.InfuserType.addTypeObject;



//Tier 1
TableCrafting.addShaped(<mysticalagriculture:iron_seeds>, [[<projecte:item.pe_fuel>, <projecte:item.pe_fuel>, <projecte:item.pe_fuel>], [<projecte:item.pe_fuel>, <minecraft:wheat_seeds>, <projecte:item.pe_fuel>], [<projecte:item.pe_fuel>, <projecte:item.pe_fuel>, <projecte:item.pe_fuel>]]);
recipes.addShaped("CTTier1", <minecraft:coal>, [[<mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>], [<mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>], [<mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>]]);

//Tier 2
addTypeObject(<mysticalagriculture:iron_essence>, "TIER1", 10);
addTypeObject(<contenttweaker:compressed_tier1>, "TIER1", 80);
enrichment.addRecipe(<mysticalagriculture:iron_essence>, <contenttweaker:compressed_tier1>);
infuser.addRecipe("TIER1", 500, <mysticalagriculture:iron_seeds>, <mysticalagriculture:gold_seeds>);
purification.addRecipe(<mysticalagriculture:gold_essence>, <gas:oxygen>, <minecraft:iron_ingot>);

//Tier 3
BloodAltar.addRecipe(<mysticalagriculture:aluminum_seeds>, <mysticalagriculture:gold_seeds>, 2, 3000, 10, 10);
RuneAltar.addRecipe(<minecraft:ender_pearl>, [<mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>], 1000);

//Tier 4
Empowerer.addRecipe(<mysticalagriculture:copper_seeds>, <mysticalagriculture:aluminum_seeds>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>, 10000, 1000, [0.25, 0.95, 0.51]);
Compost.addRecipe(<minecraft:gold_ingot>, <minecraft:gold_block>, <mysticalagriculture:copper_essence>, <mekanism:basicblock:12>);

//Tier 5
ElvenTrade.addRecipe([<mysticalagriculture:tin_seeds>], [<mysticalagriculture:copper_seeds>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>]);
AtomicReconstructor.addRecipe(<enderio:item_alloy_ingot:2>, <mysticalagriculture:tin_essence>, 100000);

//Tier 6
enrichment.addRecipe(<mysticalagriculture:tin_seeds>, <mysticalagriculture:bronze_seeds>);
ManaInfusion.addInfusion(<techreborn:ingot:10>, <mysticalagriculture:bronze_essence>, 5000);

//Tier 7
addTypeObject(<minecraft:sugar>, "SUGAR", 10);
addTypeObject(<contenttweaker:compressed_sugar>, "SUGAR", 80);
enrichment.addRecipe(<minecraft:sugar>, <contenttweaker:compressed_sugar>);
infuser.addRecipe("SUGAR", 1000, <mysticalagriculture:bronze_seeds>, <mysticalagriculture:zinc_seeds>);
BloodAltar.addRecipe(<minecraft:diamond>, <mysticalagriculture:zinc_essence>, 3, 10000, 10, 10);

//Tier 8
blastFurnace.addRecipe(<mysticalagriculture:brass_seeds>, <minecraft:diamond>, <mysticalagriculture:zinc_seeds>, <jaopca:item_crystaliridium>, 6000, 2500, 2812);
ManaInfusion.addConjuration(<techreborn:ingot:7>, <mysticalagriculture:brass_essence>, 10000);

//Tier 9
ManaInfusion.addAlchemy(<mysticalagriculture:silver_seeds>, <mysticalagriculture:brass_seeds>, 100000);
injection.addRecipe(<mysticalagriculture:silver_essence>, <gas:hydrogenchloride>, <avaritia:resource:4>);

//Tier 10
TableCrafting.addShaped(<mysticalagriculture:lead_seeds>, [[<mysticalagriculture:iron_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:silver_essence>], [<mysticalagriculture:iron_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:silver_essence>], [<mysticalagriculture:iron_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:silver_essence>], [<mysticalagriculture:iron_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:silver_essence>], [<mysticalagriculture:iron_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:silver_seeds>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:silver_essence>], [<mysticalagriculture:iron_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:silver_essence>], [<mysticalagriculture:iron_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:silver_essence>], [<mysticalagriculture:iron_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:silver_essence>], [<mysticalagriculture:iron_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:silver_essence>]]);
TableCrafting.addShaped(<mysticalagriculture:lead_seeds>, [[<mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>], [<mysticalagriculture:gold_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:gold_essence>], [<mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>], [<mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>], [<mysticalagriculture:tin_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:silver_seeds>, <mysticalagriculture:tin_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:tin_essence>], [<mysticalagriculture:bronze_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:bronze_essence>], [<mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_essence>], [<mysticalagriculture:brass_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:brass_essence>], [<mysticalagriculture:silver_essence>, <mysticalagriculture:silver_essence>, <mysticalagriculture:silver_essence>, <mysticalagriculture:silver_essence>, <mysticalagriculture:silver_essence>, <mysticalagriculture:silver_essence>, <mysticalagriculture:silver_essence>, <mysticalagriculture:silver_essence>, <mysticalagriculture:silver_essence>]]);
AtomicReconstructor.addRecipe(<thaumadditions:mithrillium_ingot>, <mysticalagriculture:lead_essence>, 250000);

//Tier 11
centrifuge.addRecipe(<mysticalagriculture:steel_seeds>, null, null, null, <mysticalagriculture:lead_seeds>, null, 4800, 10000);
recipes.addShaped("CTT11EMC", <extendedcrafting:material:24> * 9, [[<mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>], [<mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>], [<mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>]]);


//Tier 12
reaction.addRecipe(<mysticalagriculture:steel_seeds>, <liquid:liquidsulfurtrioxide> * 1000, <gas:heavywater> * 1000, <mysticalagriculture:nickel_seeds>, <gas:water> * 10, 1000, 3000);
//In enderio User recipes. Sag mill gives previous tier ingot and 25% chance of a emerald
SagMill.addRecipe([<extendedcrafting:material:24>, <minecraft:emerald>], [1, 0.25], <mysticalagriculture:nickel_essence>, "CHANCE_ONLY", 250000);

//Tier 13
blastFurnace.addRecipe(<mysticalagriculture:electrum_seeds>, null, <mysticalagriculture:nickel_seeds>, <mysticalagriculture:nickel_essence> * 8, 6000, 25000, 3730);
BloodAltar.addRecipe(<minecraft:nether_star>, <mysticalagriculture:electrum_essence>, 4, 25000, 100, 100);


//Tier 14
dissolution.addRecipe(<mysticalagriculture:electrum_seeds>, <gas:tier14> * 1000);
crystallizer.addRecipe(<gas:tier14> * 1000, <mysticalagriculture:tungsten_seeds>);
compressor.addRecipe(<mysticalagriculture:tungsten_essence>, <projecte:item.pe_fuel:1>);


//Tier 15
fusionReactor.addRecipe(<mysticalagriculture:tungsten_seeds>, <thaumadditions:mithrillium_ingot>, <mysticalagriculture:titanium_seeds>, 250000, -212, 12000);
ElvenTrade.addRecipe([<thaumadditions:adaminite_ingot>], [<mysticalagriculture:titanium_essence>]);

//Tier 16
crystallizer.addRecipe(<gas:lifeessence>, <contenttweaker:compressed_lp>);
addTypeObject(<contenttweaker:compressed_lp>, "LP", 80);
infuser.addRecipe("LP", 1000, <mysticalagriculture:titanium_seeds>, <mysticalagriculture:chrome_seeds>);

recipes.addShaped("CTT16Block", <contenttweaker:tier16_block>, [[<mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>], [<mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>], [<mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>]]);

PureDaisy.addRecipe(<contenttweaker:tier16_block>, <contenttweaker:pure_tier16>, 100);
recipes.addShapeless("CTT16ToEMC", <avaritia:resource:1> * 9, [<contenttweaker:pure_tier16>]);


//Tier 17
LightTransmutation.addTransmutation(<contenttweaker:pure_tier16>, <contenttweaker:imbued_tier16>, 100);
ElvenTrade.addRecipe([<mysticalagriculture:iridium_seeds>], [<mysticalagriculture:chrome_seeds>, <contenttweaker:imbued_tier16>, <contenttweaker:imbued_tier16>]);

recipes.addShaped("CTT17Block", <contenttweaker:tier17_block>, [[<mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>], [<mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>], [<mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>]]);

Empowerer.addRecipe(<mekanism:controlcircuit:3> * 9, <contenttweaker:tier17_block>, <mekanism:controlcircuit>, <mekanism:controlcircuit>, <mekanism:controlcircuit>, <mekanism:controlcircuit>, 80000, 1500, [1, 1, 1]);


//Tier 18
reaction.addRecipe(<mysticalagriculture:iridium_seeds>, <liquid:liquiddeuterium> * 1000, <gas:fusionfuel> * 1000, <mysticalagriculture:aluminum_brass_seeds>, <gas:tritium> * 10, 1000, 3000);

recipes.addShaped("CTT18Block", <contenttweaker:tier18_block>, [[<mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>], [<mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>], [<mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>]]);
BloodAltar.addRecipe(<contenttweaker:tier18_blood_block>, <contenttweaker:tier18_block>, 5, 50000, 250, 250);
recipes.addShapeless("CTT18ToEMC", <projecte:fuel_block:1> * 9, [<contenttweaker:tier18_blood_block>]);


//Tier 19
dissolution.addRecipe(<mysticalagriculture:aluminum_brass_seeds>, <gas:tier18> * 1000);
chemicalInfuser.addRecipe(<gas:refined_life_essence>, <gas:tier18>, <gas:tier19>);
crystallizer.addRecipe(<gas:tier19> * 1000, <mysticalagriculture:knightslime_seeds>);

Melting.addRecipe(<liquid:moltentier18> * 144, <mysticalagriculture:aluminum_brass_essence>, 500);
Melting.addRecipe(<liquid:moltentier18> * 1296, <contenttweaker:tier18_block>, 700);
Melting.addRecipe(<liquid:moltentier19> * 144, <mysticalagriculture:knightslime_essence>, 800);
Alloy.addRecipe(<liquid:molten18_19> * 9, [<liquid:moltentier19> * 6, <liquid:moltentier18> * 3]);
Casting.addBasinRecipe(<thaumadditions:adaminite_smelter>, <thaumcraft:smelter_thaumium>, <liquid:molten18_19>, 216, true, 1200);


//Tier 20
TableCrafting.addShaped(<mysticalagriculture:ardite_seeds>, [[<mysticalagriculture:lead_essence>, <mysticalagriculture:lead_essence>, <mysticalagriculture:lead_essence>, <mysticalagriculture:lead_essence>, <mysticalagriculture:lead_essence>, <mysticalagriculture:lead_essence>, <mysticalagriculture:lead_essence>, <mysticalagriculture:lead_essence>, <mysticalagriculture:lead_essence>], [<mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>], [<mysticalagriculture:nickel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:nickel_essence>], [<mysticalagriculture:electrum_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:electrum_essence>], [<mysticalagriculture:tungsten_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:knightslime_seeds>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:tungsten_essence>], [<mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_essence>], [<mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>], [<mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>], [<mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>]]);
TableCrafting.addShaped(<mysticalagriculture:ardite_seeds>, [[<mysticalagriculture:lead_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:aluminum_brass_essence>], [<mysticalagriculture:lead_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:aluminum_brass_essence>], [<mysticalagriculture:lead_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:aluminum_brass_essence>], [<mysticalagriculture:lead_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:aluminum_brass_essence>], [<mysticalagriculture:lead_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:knightslime_seeds>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:aluminum_brass_essence>], [<mysticalagriculture:lead_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:aluminum_brass_essence>], [<mysticalagriculture:lead_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:aluminum_brass_essence>], [<mysticalagriculture:lead_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:aluminum_brass_essence>], [<mysticalagriculture:lead_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:aluminum_brass_essence>]]);

AtomicReconstructor.addRecipe(<avaritia:block_resource:2>, <mysticalagriculture:ardite_essence>, 1000000);


//Tier 21
Melting.addRecipe(<liquid:moltentier20> * 144, <mysticalagriculture:ardite_essence>, 800);
Casting.addTableRecipe(<mysticalagriculture:cobalt_seeds>, <mysticalagriculture:ardite_seeds>, <liquid:moltentier20>, 432, true, 3600);

Melting.addRecipe(<liquid:moltentier21> * 144, <mysticalagriculture:cobalt_essence>, 800);
thermalevaporation.addRecipe(<liquid:moltentier21>, <liquid:moltentier21_evaporated>);
Casting.addTableRecipe(<projecte:item.pe_fuel:2>, null, <liquid:moltentier21_evaporated>, 144, false, 300);


//Tier 22
blastFurnace.addRecipe(<mysticalagriculture:manyullyn_seeds>, <mysticalagriculture:iron_seeds>, <mysticalagriculture:cobalt_seeds>, <mysticalagriculture:aluminum_seeds> * 2, 6000, 50000, 3730);

recipes.addShaped("CTT22Block", <contenttweaker:tier22_block>, [[<mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>], [<mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>], [<mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>]]);
LightTransmutation.addTransmutation(<contenttweaker:tier22_block>, <contenttweaker:imbued_tier22>, 100);
AtomicReconstructor.addRecipe(<jaopca:item_singularityaquamarine> * 9, <contenttweaker:imbued_tier22>, 500000);


//Tier 23
infuser.addRecipe("TIER1", 1800, <mysticalagriculture:manyullyn_seeds>, <contenttweaker:metallic_tier22_seeds>);
Inscriber.addRecipe(<mysticalagriculture:electrical_steel_seeds>, <contenttweaker:metallic_tier22_seeds>, false, <mysticalagriculture:manyullyn_essence>, <minecraft:iron_block>);

//3 into alloy smelter to sag mill is how to get emc from this tier
AlloySmelter.addRecipe(<contenttweaker:tier23alloy>, [<mysticalagriculture:electrical_steel_essence> * 3], 250000, 0.5);
SagMill.addRecipe([<techreborn:nuke> * 3], [1], <contenttweaker:tier23alloy>, "NONE", 250000);


//Tier 24
BloodAltar.addRecipe(<contenttweaker:blood_tier23_seeds>, <mysticalagriculture:electrical_steel_seeds>, 5, 50000, 250, 250);
infuser.addRecipe("LP", 1800, <contenttweaker:blood_tier23_seeds>, <mysticalagriculture:redstone_alloy_seeds>);

AtomicReconstructor.addRecipe(<contenttweaker:reconstructed_tier24>, <mysticalagriculture:redstone_alloy_essence>, 1000000);
AtomicReconstructor.addRecipe(<avaritia:singularity:7>, <contenttweaker:reconstructed_tier24>, 1000000);




//Tier 25
Compost.addRecipe(<contenttweaker:composting_tier24_seeds>, <contenttweaker:tier24_composting_block>, <mysticalagriculture:redstone_alloy_seeds>, <contenttweaker:tier24_block>);
Empowerer.addRecipe(<mysticalagriculture:conductive_iron_seeds>, <contenttweaker:composting_tier24_seeds>, <mysticalagriculture:tin_seeds>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:tin_seeds>, <mysticalagriculture:redstone_alloy_essence>, 80000, 1500, [0.5, 0.5, 0.5]);

Empowerer.addRecipe(<contenttweaker:empowered_tier25>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, 80000, 1500, [0.5, 0.75, 0.25]);
Empowerer.addRecipe(<avaritia:singularity:2> * 9, <contenttweaker:empowered_tier25>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, 80000, 1500, [0.25, 0.75, 0.5]);


//Tier 26
BloodAltar.addRecipe(<contenttweaker:blood_tier25_seeds>, <mysticalagriculture:conductive_iron_seeds>, 5, 100000, 500, 500);
dissolution.addRecipe(<contenttweaker:blood_tier25_seeds>, <gas:tier25blood> * 1000);
crystallizer.addRecipe(<gas:tier25blood> * 1000, <mysticalagriculture:soularium_seeds>);

centrifuge.addRecipe(<projecte:fuel_block:2>, null, null, null, <mysticalagriculture:soularium_essence>, null, 2400, 100000);


//Tier 27
Melting.addRecipe(<liquid:moltentier25> * 144, <mysticalagriculture:conductive_iron_essence>, 900);
Melting.addRecipe(<liquid:moltentier26> * 144, <mysticalagriculture:soularium_essence>, 1000);
Alloy.addRecipe(<liquid:molten25_26>, [<liquid:moltentier25>, <liquid:moltentier26>]);
Casting.addBasinRecipe(<contenttweaker:tier25_26_alloy_block>, <mysticalagriculture:soularium_seeds>, <liquid:molten25_26>, 1296, true, 1200);
BloodAltar.addRecipe(<mysticalagriculture:dark_steel_seeds>, <contenttweaker:tier25_26_alloy_block>, 5, 100000, 500, 500);

BloodAltar.addRecipe(<contenttweaker:bloody_tier27>, <mysticalagriculture:dark_steel_essence>, 5, 25000, 500, 250);
Inscriber.addRecipe(<avaritia:singularity:1> * 3, <contenttweaker:bloody_tier27>, false, <contenttweaker:bloody_tier27>, <contenttweaker:bloody_tier27>);



//Tier 28
AtomicReconstructor.addRecipe(<contenttweaker:reconstructed_tier27_seeds>, <mysticalagriculture:dark_steel_seeds>, 1500000);
Empowerer.addRecipe(<contenttweaker:empowered_tier27_seeds>, <contenttweaker:reconstructed_tier27_seeds>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:4>, <mysticalagriculture:dark_steel_essence>, 80000, 2000, [0.25, 0.75, 0.25]);
AtomicReconstructor.addRecipe(<mysticalagriculture:pulsating_iron_seeds>, <contenttweaker:empowered_tier27_seeds>, 1500000);


ManaInfusion.addAlchemy(<contenttweaker:tier28_alchemy>, <mysticalagriculture:pulsating_iron_essence>, 25000);
ElvenTrade.addRecipe([<contenttweaker:tier28_elven>], [<contenttweaker:tier28_alchemy>]);
ManaInfusion.addInfusion(<avaritia:singularity:13>, <contenttweaker:tier28_elven>, 25000);


//Tier 29
dissolution.addRecipe(<projecte:item.pe_matter>, <gas:dirty_dark_matter> * 100);
washer.addRecipe(<gas:dirty_dark_matter>, <gas:dark_matter>);
separator.addRecipe(<liquid:dark_matter>, 10000, <gas:aeternalis> * 2, <gas:aeternalis> * 2);
reaction.addRecipe(<mysticalagriculture:pulsating_iron_seeds>, <liquid:aeternalis> * 1000, <gas:refined_life_essence> * 500, <mysticalagriculture:energetic_alloy_seeds>, <gas:lifeessence> * 10, 1000, 3000);

Melting.addRecipe(<liquid:moltentier29> * 144, <mysticalagriculture:energetic_alloy_essence>, 1700);
Casting.addTableRecipe(<jaopca:item_singularitytungsten>, null, <liquid:moltentier29>, 144, false, 1200);


//Tier 30
TableCrafting.addShaped(<mysticalagriculture:vibrant_alloy_seeds>, [[<mysticalagriculture:ardite_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:pulsating_iron_essence>], [<mysticalagriculture:ardite_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:pulsating_iron_essence>], [<mysticalagriculture:ardite_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:pulsating_iron_essence>], [<mysticalagriculture:ardite_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:pulsating_iron_essence>], [<mysticalagriculture:ardite_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:energetic_alloy_seeds>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:pulsating_iron_essence>], [<mysticalagriculture:ardite_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:pulsating_iron_essence>], [<mysticalagriculture:ardite_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:pulsating_iron_essence>], [<mysticalagriculture:ardite_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:pulsating_iron_essence>], [<mysticalagriculture:ardite_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:pulsating_iron_essence>]]);
TableCrafting.addShaped(<mysticalagriculture:vibrant_alloy_seeds>, [[<mysticalagriculture:ardite_essence>, <mysticalagriculture:ardite_essence>, <mysticalagriculture:ardite_essence>, <mysticalagriculture:ardite_essence>, <mysticalagriculture:ardite_essence>, <mysticalagriculture:ardite_essence>, <mysticalagriculture:ardite_essence>, <mysticalagriculture:ardite_essence>, <mysticalagriculture:ardite_essence>], [<mysticalagriculture:cobalt_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:cobalt_essence>], [<mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>], [<mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:electrical_steel_essence>], [<mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:energetic_alloy_seeds>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:redstone_alloy_essence>], [<mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>], [<mysticalagriculture:soularium_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:soularium_essence>], [<mysticalagriculture:dark_steel_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:dark_steel_essence>, <mysticalagriculture:dark_steel_essence>], [<mysticalagriculture:pulsating_iron_essence>, <mysticalagriculture:pulsating_iron_essence>, <mysticalagriculture:pulsating_iron_essence>, <mysticalagriculture:pulsating_iron_essence>, <mysticalagriculture:pulsating_iron_essence>, <mysticalagriculture:pulsating_iron_essence>, <mysticalagriculture:pulsating_iron_essence>, <mysticalagriculture:pulsating_iron_essence>, <mysticalagriculture:pulsating_iron_essence>]]);

dissolution.addRecipe(<mysticalagriculture:vibrant_alloy_essence>, <gas:tier30_dirty> * 1000);
washer.addRecipe(<gas:tier30_dirty>, <gas:tier30_clean>);
crystallizer.addRecipe(<gas:tier30_clean> * 1000, <contenttweaker:tier30_crystal>);
injection.addRecipe(<contenttweaker:tier30_crystal>, <gas:hydrogenchloride>, <contenttweaker:tier30_shard>);
purification.addRecipe(<contenttweaker:tier30_shard>, <gas:oxygen>, <contenttweaker:tier30_clump>);
crusher.addRecipe(<contenttweaker:tier30_clump>, <contenttweaker:tier30_dust>);
enrichment.addRecipe(<contenttweaker:tier30_dust>, <projecte:item.pe_matter>);


//Tier 31
SliceNSplice.addRecipe(<mysticalagriculture:end_steel_seeds>, [<contenttweaker:tier30_dust>, <mysticalagriculture:vibrant_alloy_seeds>, <mysticalagriculture:vibrant_alloy_essence>, <contenttweaker:tier30_clump>, <contenttweaker:tier30_crystal>, <contenttweaker:tier30_shard>], 450000, 0.5);

Vat.addRecipe(<liquid:bloody_tier31_essence>, 1, <liquid:refined_life_essence>, [<mysticalagriculture:end_steel_essence>], [1], [<mysticalagriculture:end_steel_essence>], [1], 750000);
thermalevaporation.addRecipe(<liquid:bloody_tier31_essence>, <liquid:evaporated_bloody_tier31>);
crystallizer.addRecipe(<gas:evaporated_bloody_tier31> * 500, <avaritia:singularity:14>);


//Tier 32
Vat.addRecipe(<liquid:red_matter>, 1, <liquid:dark_matter>, [<mysticalagriculture:end_steel_essence>], [1], [<projecte:item.pe_matter:1>], [1], 500000);
chemicalInfuser.addRecipe(<gas:red_matter>, <gas:hydrogen>, <gas:heavy_red_matter>);
Casting.addTableRecipe(<mysticalagriculture:manasteel_seeds>, <mysticalagriculture:end_steel_seeds>, <liquid:heavy_red_matter>, 144, true, 600);

reaction.addRecipe(<auxiliumequivalence:matter>, <liquid:sulfuricacid> * 1000, <gas:heavy_red_matter> * 1000, <mekanism:otherdust:3>, <gas:orange_matter> * 500, 1000, 3000);
Melting.addRecipe(<liquid:moltentier32> * 144, <mysticalagriculture:manasteel_essence>, 2500);
Alloy.addRecipe(<liquid:moltenorange_32> * 145, [<liquid:orange_matter>, <liquid:moltentier32> * 144]);
Casting.addBasinRecipe(<projecte:matter_block>, null, <liquid:moltenorange_32>, 145, false, 600);


//Tier 33
recipes.addShaped("CTT32Block", <contenttweaker:tier32_block>, [[<mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>], [<mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>], [<mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>]]);

SliceNSplice.addRecipe(<contenttweaker:sliced_tier32_block>, [<minecraft:nether_star>, <mysticalagriculture:manasteel_seeds>, <minecraft:nether_star>, <contenttweaker:tier32_block>, <enderio:item_alloy_endergy_ingot:3>, <contenttweaker:tier32_block>], 500000, 0.5);
LightTransmutation.addTransmutation(<contenttweaker:sliced_tier32_block>, <contenttweaker:imbued_tier32_block>, 100);
ManaInfusion.addAlchemy(<contenttweaker:mundane_tier33_seeds>, <contenttweaker:imbued_tier32_block>, 750000);
ElvenTrade.addRecipe([<mysticalagriculture:elementium_seeds>], [<contenttweaker:mundane_tier33_seeds>]);

BloodAltar.addRecipe(<contenttweaker:bloody_tier33>, <mysticalagriculture:elementium_essence>, 5, 50000, 500, 250);
Compost.addRecipe(<contenttweaker:composted_tier33>, <contenttweaker:tier33_composting_block>, <contenttweaker:bloody_tier33>, <contenttweaker:bloody_tier33_block>);
BloodAltar.addRecipe(<contenttweaker:bloody_composted_tier33>, <contenttweaker:composted_tier33>, 5, 50000, 500, 250);
AtomicReconstructor.addRecipe(<avaritia:resource:5>, <contenttweaker:bloody_composted_tier33>, 2500000);


//Tier 34
Melting.addRecipe(<liquid:moltentier33> * 144, <mysticalagriculture:elementium_essence>, 2500);
Casting.addTableRecipe(<contenttweaker:plated_tier33_seeds>, <mysticalagriculture:elementium_seeds>, <liquid:moltentier33>, 288, true, 600);
Empowerer.addRecipe(<contenttweaker:empowered_plated_tier33_seeds>, <contenttweaker:plated_tier33_seeds>, <mysticalagriculture:zinc_seeds>, <mysticalagriculture:bronze_seeds>, <mysticalagriculture:tin_seeds>, <mysticalagriculture:copper_seeds>, 80000, 2000, [0.75, 0.25, 0.75]);
Inscriber.addRecipe(<mysticalagriculture:terrasteel_seeds>, <contenttweaker:empowered_plated_tier33_seeds>, false, <mysticalagriculture:pulsating_iron_essence>, <mysticalagriculture:pulsating_iron_essence>);

ManaInfusion.addInfusion(<contenttweaker:mana_infused_tier34>, <mysticalagriculture:terrasteel_essence>, 750000);
ElvenTrade.addRecipe([<contenttweaker:elvish_tier34> * 3], [<contenttweaker:mana_infused_tier34>, <contenttweaker:mana_infused_tier34>, <contenttweaker:mana_infused_tier34>, <botania:manaresource:4>]);
TableCrafting.addShaped(<contenttweaker:compressed_elvish_tier34>, [[<contenttweaker:elvish_tier34>, <contenttweaker:elvish_tier34>, <contenttweaker:elvish_tier34>], [<contenttweaker:elvish_tier34>, <contenttweaker:elvish_tier34>, <contenttweaker:elvish_tier34>], [<contenttweaker:elvish_tier34>, <contenttweaker:elvish_tier34>, <contenttweaker:elvish_tier34>]]);
SliceNSplice.addRecipe(<projecte:item.pe_matter:1> * 9, [<mysticalagriculture:iron_essence>, <contenttweaker:compressed_elvish_tier34>, <mysticalagriculture:iron_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:gold_essence>], 2500000, 1);


//Tier 35
addTypeObject(<mysticalagriculture:manyullyn_essence>, "TIER22", 10);
addTypeObject(<contenttweaker:compressed_tier22>, "TIER22", 80);
enrichment.addRecipe(<mysticalagriculture:manyullyn_essence>, <contenttweaker:compressed_tier22>);

centrifuge.addRecipe(<contenttweaker:tier34_seed_component>, <mysticalagriculture:pulsating_iron_essence>, null, null, <mysticalagriculture:terrasteel_seeds>, null, 6000, 50000);
AtomicReconstructor.addRecipe(<contenttweaker:reconstructed_tier34_component>, <contenttweaker:tier34_seed_component>, 2500000);
blastFurnace.addRecipe(<contenttweaker:charred_tier34_part>, null, <contenttweaker:reconstructed_tier34_component>, <projecte:item.pe_fuel:2>, 3000, 50000, 3730);
infuser.addRecipe("TIER22", 2500, <contenttweaker:charred_tier34_part>, <mysticalagriculture:thaumium_seeds>);

SagMill.addRecipe([<contenttweaker:tier35_beam>, <contenttweaker:tier35_bolt>, <contenttweaker:tier35_gear>], [1, 1, 1], <mysticalagriculture:thaumium_essence>, "NONE", 1500000);
ElvenTrade.addRecipe([<contenttweaker:elvish_tier35_beam>], [<contenttweaker:tier35_beam>]);
AtomicReconstructor.addRecipe(<contenttweaker:reconstructed_tier35_bolt>, <contenttweaker:tier35_bolt>, 2500000);
crusher.addRecipe(<contenttweaker:tier35_gear>, <contenttweaker:crushed_tier35_gear>);
enrichment.addRecipe(<contenttweaker:crushed_tier35_gear>, <contenttweaker:enriched_crushed_tier35_gear>);
AlloySmelter.addRecipe(<projecte:dm_furnace>, [<contenttweaker:elvish_tier35_beam>, <contenttweaker:reconstructed_tier35_bolt>, <contenttweaker:enriched_crushed_tier35_gear>], 1500000, 1);


//Tier 36
thermalevaporation.addRecipe(<liquid:aeternalis>, <liquid:evaporated_aeternalis>);
solarneutronactivator.addRecipe(<gas:orange_matter>, <gas:activated_orange_matter>);
chemicalInfuser.addRecipe(<gas:activated_orange_matter>, <gas:evaporated_aeternalis> * 2, <gas:impure_yellow_matter>);
washer.addRecipe(<gas:impure_yellow_matter>, <gas:clean_yellow_matter>);
Vat.addRecipe(<liquid:yellow_matter>, 1, <liquid:clean_yellow_matter>, [<auxiliumequivalence:matter>], [1], [<auxiliumequivalence:matter:1>], [1], 1000000);

SagMill.addRecipe([<contenttweaker:tier35_plate>, <contenttweaker:tier35_shard>, <contenttweaker:tier35_casing>, <contenttweaker:tier35_crystal>], [1, 1, 1, 1], <mysticalagriculture:thaumium_seeds>, "NONE", 5000000, [1, 1, 1, 1]);
AlloySmelter.addRecipe(<contenttweaker:tier35_washer>, [<contenttweaker:tier35_plate>, <contenttweaker:tier35_shard>, <avaritia:resource:7>], 2500000, 1);
Tank.addRecipe(true, <contenttweaker:tier35_washer>, <liquid:yellow_matter> * 500, <contenttweaker:infused_tier35_washer>);
AtomicReconstructor.addRecipe(<contenttweaker:reconstructed_tier35_crystal>, <contenttweaker:tier35_crystal>, 2500000);
vacuumFreezer.addRecipe(<contenttweaker:frozen_tier35_casing>, <contenttweaker:tier35_casing>, 1200, 10000);
AlchemyTable.addRecipe(<mysticalagriculture:void_metal_seeds>, [<contenttweaker:frozen_tier35_casing>, <contenttweaker:reconstructed_tier35_crystal>, <contenttweaker:infused_tier35_washer>, <contenttweaker:elvish_tier35_beam>, <contenttweaker:reconstructed_tier35_bolt>, <contenttweaker:enriched_crushed_tier35_gear>], 100, 600, 4);

//<mysticalagriculture:void_metal_seeds>
//<projecte:matter_block:1> //21,932,605,440

//enrichment.addRecipe(<mysticalagriculture:void_metal_essence>, <contenttweaker:enriched_tier36_essence> * 2);
//those 2 outputs into 2 and 3 things
//compressor.addRecipe(<contenttweaker:enriched_tier36_essence>, <gas:aeternalis>, <contenttweaker:> * 2);
//SagMill.addRecipe([, , ], [1, 1, 1], <contenttweaker:enriched_tier36_essence>, "NONE", 7500000, [1, 1, 1]);
//1 of 2 modified
//combiner.addRecipe(IItemStack itemInput, @Optional IItemStack extraInput, IItemStack itemOutput);
//2 of 3 modified
//use all in empowerer
//5 inputs from the essence
//Empowerer.addRecipe(<projecte:matter_block:1>, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time, @Optional float[] particleColourArray);


//Tier 37
recipes.addShaped("CTT35Block", <contenttweaker:tier35_block>, [[<mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>], [<mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>], [<mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>]]);
recipes.addShaped("CTT36Block", <contenttweaker:tier36_block>, [[<mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>], [<mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>], [<mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>]]);

industrialGrinder.addRecipe(<contenttweaker:tier36_beam>, <contenttweaker:tier36_bolt>, <contenttweaker:tier36_gear>, <contenttweaker:tier36_rod>, <mysticalagriculture:void_metal_seeds>, null, <liquid:yellow_matter> * 250, 3000, 50000);
chemicalReactor.addRecipe(<contenttweaker:tier36_casing>, <contenttweaker:tier36_beam>, <contenttweaker:tier36_bolt>, 10000, 1200);
implosionCompressor.addRecipe(<contenttweaker:tier36_cluster>, <contenttweaker:tier36_powder>, <contenttweaker:tier36_rod>, <techreborn:nuke> * 16, 1200, 10000);
AlloySmelter.addRecipe(<contenttweaker:tier36_plate>, [<contenttweaker:tier36_gear>, <contenttweaker:tier36_powder>], 1500000, 1);
Agglomeration.addRecipe(<mysticalagriculture:osmium_seeds>, [<contenttweaker:tier36_casing>, <contenttweaker:tier36_cluster>, <contenttweaker:tier36_plate>], 750000, 0x1D0C30, 0xB2BED3, <auxiliumequivalence:matter_block:4>, <contenttweaker:tier36_block>, <contenttweaker:tier35_block>);


addTypeObject(<mysticalagriculture:vibrant_alloy_essence>, "TIER30", 10);
addTypeObject(<contenttweaker:compressed_tier30>, "TIER30", 80);
enrichment.addRecipe(<mysticalagriculture:vibrant_alloy_essence>, <contenttweaker:compressed_tier30>);

extractor.add(<contenttweaker:extracted_tier37_essence>, <mysticalagriculture:osmium_essence>, 1200, 10000);
infuser.addRecipe("TIER30", 400, <contenttweaker:extracted_tier37_essence>, <contenttweaker:infused_tier37_essence>);
dissolution.addRecipe(<contenttweaker:infused_tier37_essence>, <gas:tier37_dirty> * 1000);
washer.addRecipe(<gas:tier37_dirty>, <gas:tier37_clean>);
reaction.addRecipe(<avaritia:resource:5>, <liquid:tier37_clean> * 500, <gas:tier37_clean> * 500, <avaritia:resource:6>, <gas:water> * 100, 1000, 3000);


//Tier 38
//<mysticalagriculture:glowstone_ingot_seeds>
//<auxiliumequivalence:matter> //66,120,302,592


//Use green matter

//LightTransmutation.addTransmutation(IItemStack stackIn, IItemStack stackOut, double cost);

//Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time, @Optional float[] particleColourArray);



//Tier 39
//TODO: Liquid Blue Matter Recipe


ElvenTrade.addRecipe([<contenttweaker:tier38_drop>, <contenttweaker:tier38_leaf>, <contenttweaker:tier38_clump>, <contenttweaker:tier38_fern>], [<mysticalagriculture:glowstone_ingot_seeds>]);
AtomicReconstructor.addRecipe(<contenttweaker:reconstructed_tier38_drop>, <contenttweaker:tier38_drop>, 5000000);
BloodAltar.addRecipe(<contenttweaker:bloody_tier38_leaf>, <contenttweaker:tier38_leaf>, 5, 500000, 500, 250);
rollingMachine.addShapeless(<contenttweaker:tier38_plate>, [<contenttweaker:tier38_clump>, <mysticalagriculture:refined_obsidian_essence>, <mysticalagriculture:refined_obsidian_essence>, <mysticalagriculture:refined_obsidian_essence>]);
TartaricForge.addRecipe(<contenttweaker:tier38_tangle>, [<contenttweaker:reconstructed_tier38_drop>, <contenttweaker:bloody_tier38_leaf>, <contenttweaker:tier38_plate>, <contenttweaker:tier38_fern>], 1024, 256);
Vat.addRecipe(<liquid:blue_tier38>, 1, <liquid:blue_matter>, [<contenttweaker:tier38_tangle>], [1], [<avaritia:resource:6>], [1], 1250000);
crystallizer.addRecipe(<gas:blue_tier38>, <mysticalagriculture:refined_obsidian_seeds>);


//<mysticalagriculture:refined_obsidian_seeds>
//<avaritia:block_resource:1> //370,595,077,488


//Tier 40
TableCrafting.addShaped(<mysticalagriculture:alumite_seeds>, [[<mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:glowstone_ingot_essence>], [<mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:glowstone_ingot_essence>], [<mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:glowstone_ingot_essence>], [<mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:glowstone_ingot_essence>], [<mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:refined_obsidian_seeds>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:glowstone_ingot_essence>], [<mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:glowstone_ingot_essence>], [<mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:glowstone_ingot_essence>], [<mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:glowstone_ingot_essence>], [<mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:glowstone_ingot_essence>]]);
TableCrafting.addShaped(<mysticalagriculture:alumite_seeds>, [[<mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:vibrant_alloy_essence>], [<mysticalagriculture:end_steel_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:end_steel_essence>], [<mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>], [<mysticalagriculture:elementium_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:elementium_essence>], [<mysticalagriculture:terrasteel_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:refined_obsidian_seeds>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:terrasteel_essence>], [<mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>], [<mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>, <mysticalagriculture:void_metal_essence>], [<mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_essence>], [<mysticalagriculture:glowstone_ingot_essence>, <mysticalagriculture:glowstone_ingot_essence>, <mysticalagriculture:glowstone_ingot_essence>, <mysticalagriculture:glowstone_ingot_essence>, <mysticalagriculture:glowstone_ingot_essence>, <mysticalagriculture:glowstone_ingot_essence>, <mysticalagriculture:glowstone_ingot_essence>, <mysticalagriculture:glowstone_ingot_essence>, <mysticalagriculture:glowstone_ingot_essence>]]);
//<extendedcrafting:singularity_custom> //37,629,849,600,000


//Tier 41
TableCrafting.addShaped(<mysticalagriculture:starmetal_seeds>, [[<mysticalagriculture:iron_essence>, <mysticalagriculture:iron_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:gold_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:aluminum_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:tin_essence>], [<mysticalagriculture:tin_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:bronze_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:brass_essence>, <mysticalagriculture:silver_essence>, <mysticalagriculture:silver_essence>], [<mysticalagriculture:lead_essence>, <mysticalagriculture:lead_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:steel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:nickel_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:electrum_essence>, <mysticalagriculture:tungsten_essence>], [<mysticalagriculture:tungsten_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:chrome_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:iridium_essence>, <mysticalagriculture:aluminum_brass_essence>, <mysticalagriculture:aluminum_brass_essence>], [<mysticalagriculture:knightslime_essence>, <mysticalagriculture:knightslime_essence>, <mysticalagriculture:ardite_essence>, <mysticalagriculture:ardite_essence>, <mysticalagriculture:alumite_seeds>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:cobalt_essence>, <mysticalagriculture:manyullyn_essence>, <mysticalagriculture:manyullyn_essence>], [<mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:electrical_steel_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:redstone_alloy_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:conductive_iron_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:soularium_essence>, <mysticalagriculture:dark_steel_essence>], [<mysticalagriculture:dark_steel_essence>, <mysticalagriculture:pulsating_iron_essence>, <mysticalagriculture:pulsating_iron_essence>, <mysticalagriculture:energetic_alloy_essence>, <mysticalagriculture:energetic_alloy_essence>, <mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:vibrant_alloy_essence>, <mysticalagriculture:end_steel_essence>, <mysticalagriculture:end_steel_essence>], [<mysticalagriculture:manasteel_essence>, <mysticalagriculture:manasteel_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:elementium_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:terrasteel_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:thaumium_essence>, <mysticalagriculture:void_metal_essence>], [<mysticalagriculture:void_metal_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:glowstone_ingot_essence>, <mysticalagriculture:glowstone_ingot_essence>, <mysticalagriculture:refined_obsidian_essence>, <mysticalagriculture:refined_obsidian_essence>, <mysticalagriculture:alumite_essence>, <mysticalagriculture:alumite_essence>]]);
//<extendedcrafting:singularity_custom:1> //863,596,339,200,000





//Actually additions

//Compost.addRecipe(IItemStack output, IItemStack outputDisplay, IItemStack input, IItemStack inputDisplay);
//AtomicReconstructor.addRecipe(IItemStack output, IItemStack input, int energyUsed);
//Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time, @Optional float[] particleColourArray);


//AE2
//Inscriber.addRecipe(IItemStack output, IItemStack input, boolean inscribe, @Optional IItemStack topInput, @Optional IItemStack bottomInput);


//Astral Sorcery
//LightTransmutation.addTransmutation(IItemStack stackIn, IItemStack stackOut, double cost);


//Blood magic

//AlchemyTable.addRecipe(IItemStack output, IItemStack[] inputs, int syphon, int ticks, int minTier);
//BloodAltar.addRecipe(IItemStack output, IItemStack input, int minimumTier, int syphon, int consumeRate, int drainRate);
//TartaricForge.addRecipe(IItemStack output, IItemStack[] inputs, double minSouls, double soulDrain);


//Botania

//ElvenTrade.addRecipe(IIngredient[] outputs, IIngredient[] input);
//PureDaisy.addRecipe(IIngredient blockInput, IItemStack blockOutput, @Optional int time);
//ManaInfusion.addInfusion(IItemStack output, IIngredient input, int mana);
//ManaInfusion.addAlchemy(IItemStack output, IIngredient input, int mana);
//ManaInfusion.addConjuration(IItemStack output, IIngredient input, int mana);

//Agglomeration.addRecipe(IItemStack output, IIngredient[] inputs, int manaCost, int color1, int color2, IIngredient center, IIngredient edge, IIngredient corner);


//EnderIO
//AlloySmelter.addRecipe(IItemStack output, IIngredient[] input, @Optional int energyCost, @Optional float xp);
//SagMill.addRecipe(IItemStack[] output, float[] chances, IIngredient input, @Optional String bonusType, @Optional int energyCost, @Optional float[] xp);
//SliceNSplice.addRecipe(IItemStack output, IIngredient[] input, @Optional int energyCost, @Optional float xp);
//Tank.addRecipe(boolean fill, IIngredient input, ILiquidStack fluid, IItemStack output);
//Vat.addRecipe(ILiquidStack output, float inMult, ILiquidStack input, IIngredient[] slot1Solids, float[] slot1Mults, IIngredient[] slot2Solids, float[] slot2Mults, @Optional int energyCost);


//Extended crafting
//TableCrafting.addShaped(<output>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]]);
//TableCrafting.addShaped(<output>, [[<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>]]);
//TableCrafting.addShaped(<output>, [[<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>]]);
//TableCrafting.addShaped(<output>, [[<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>]]);


//Mekanism

//crystallizer.addRecipe(IGasStack inputGas, IItemStack outputStack);
//dissolution.addRecipe(IItemStack inputStack, IGasStack outputGas);
//chemicalInfuser.addRecipe(IGasStack inputGas1, IGasStack inputGas2, IGasStack outputGas);
//injection.addRecipe(IItemStack inputStack, IGasStack inputGas, IItemStack outputStack);
//oxidizer.addRecipe(IItemStack inputStack, IGasStack outputGas);
//washer.addRecipe(IGasStack inputGas, IGasStack outputGas);
//combiner.addRecipe(IItemStack itemInput, @Optional IItemStack extraInput, IItemStack itemOutput);
//crusher.addRecipe(IItemStack inputStack, IItemStack outputStack);
//separator.addRecipe(ILiquidStack inputFluid, double inputRF, IGasStack outputGas1, IGasStack outputGas2);
//enrichment.addRecipe(IItemStack inputStack, IItemStack outputStack);
//compressor.addRecipe(IItemStack inputStack, @Optional IGasStack inputGas, IItemStack outputStack);
//reaction.addRecipe(IItemStack itemInput, ILiquidStack liquidInput, IGasStack gasInput, IItemStack itemOutput, IGasStack gasOutput, double energy, int duration);
//purification.addRecipe(IItemStack itemInput, @Optional IGasStack gasInput, IItemStack itemOutput);
//solarneutronactivator.addRecipe(IGasStack gasInput, IGasStack gasOutput);
//thermalevaporation.addRecipe(ILiquidStack liquidInput, ILiquidStack liquidOutput);
//infuser.addRecipe(String infusionType, int infusionConsumed, IItemStack inputStack, IItemStack outputStack);


//Tech Reborn
//blastFurnace.addRecipe(IItemStack output1, IItemStack output2, IIngredient input1, IIngredient input2, int tickTime, int euTick, int neededHeat); //3730 given heating coils dont seem to work
//centrifuge.addRecipe(IItemStack output1, IItemStack output2, IItemStack output3, IItemStack output4, IIngredient input1, IIngredient input2, int ticktime, int euTick);
//fusionReactor.addRecipe(IIngredient topInput, IIngredient bottomInput, IItemStack output, int startEU, int euTick, int tickTime);
//chemicalReactor.addRecipe(IItemStack output1, IIngredient input1, IIngredient input2, int energyCostPerTick, int operationDuration);
//extractor.add(IItemStack output, IIngredient input1, int tickTime, int euTick);
//implosionCompressor.addRecipe(IItemStack output1, IItemStack output2, IIngredient input1, IIngredient input2, int tickTime, int euTick);
//rollingMachine.addShaped(IItemStack output, IIngredient[][] ingredients);
//rollingMachine.addShapeless(IItemStack output, IIngredient[] ingredients);
//industrialElectrolyzer.addRecipe(IItemStack output1, IItemStack output2, IItemStack output3, IItemStack output4, IIngredient cells, IIngredient input2, int tickTime, int euTick);
//industrialGrinder.addRecipe(IItemStack output1, IItemStack output2, IItemStack output3, IItemStack output4, IIngredient input1, IIngredient input2, ILiquidStack fluid, int tickTime, int euTick);
//vacuumFreezer.addRecipe(IItemStack output, IIngredient input, int ticktime, int euTick);

//Tinkers
//Alloy.addRecipe(ILiquidStack output, ILiquidStack[] inputs);
//Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
//Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
//Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int temp);