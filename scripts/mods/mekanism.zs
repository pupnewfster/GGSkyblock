#priority 400

//Infuser
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped("CTInfuser", <mekanism:machineblock:8>, [[<ore:ingotSteel>, <minecraft:furnace>, <ore:ingotSteel>], [<minecraft:redstone>, <ore:ingotOsmium>, <minecraft:redstone>], [<ore:ingotSteel>, <minecraft:furnace>, <ore:ingotSteel>]]);

//Jetpack
recipes.remove(<mekanism:jetpack>);
recipes.addShaped("CTMekanismJetpack", <mekanism:jetpack>, [[<ore:ingotSteel>, <ore:circuitElite>, <ore:ingotSteel>], [<ore:ingotTin>, <mekanism:gastank>, <ore:ingotTin>], [null, <thaumcraft:cloud_ring>, null]]);

//Energy Tablet
recipes.remove(<mekanism:energytablet>);
recipes.addShaped("CTEnergyTablet", <mekanism:energytablet>, [[<mekanism:enrichedalloy>, <ore:ingotGold>, <mekanism:enrichedalloy>], [<minecraft:redstone>, <actuallyadditions:item_battery>, <minecraft:redstone>], [<mekanism:enrichedalloy>, <ore:ingotGold>, <mekanism:enrichedalloy>]]);

//Teleportation Core
recipes.remove(<mekanism:teleportationcore>);
recipes.addShaped("CTTeleportationCore", <mekanism:teleportationcore>, [[<ore:blockLapis>, <mekanism:atomicalloy>, <ore:blockLapis>], [<ore:blockGold>, <ore:blockDiamond>, <ore:blockGold>], [<ore:blockLapis>, <mekanism:atomicalloy>, <ore:blockLapis>]]);

//Teleporter
recipes.remove(<mekanism:machineblock:11>);
recipes.addShaped("CTTeleporter", <mekanism:machineblock:11>, [[<ore:circuitElite>, <mekanism:basicblock:8>, <ore:circuitElite>], [<mekanism:basicblock:8>, <enderio:block_tele_pad>, <mekanism:basicblock:8>], [<ore:circuitElite>, <mekanism:basicblock:8>, <ore:circuitElite>]]);

//Portable Teleporter
recipes.remove(<mekanism:portableteleporter>);
recipes.addShaped("CTPortableTeleporter", <mekanism:portableteleporter>, [[null, <mekanism:energycube>.withTag({tier: 3}), null], [<ore:circuitUltimate>, <mekanism:machineblock:11>, <ore:circuitUltimate>], [null, <mekanism:energycube>.withTag({tier: 3}), null]]);

//Alloys
mods.mekanism.infuser.removeRecipe(<mekanism:reinforcedalloy>, <mekanism:enrichedalloy>, "DIAMOND");
mods.mekanism.infuser.removeRecipe(<mekanism:atomicalloy>, <mekanism:reinforcedalloy>, "OBSIDIAN");
mods.mekanism.infuser.removeRecipe(<mekanism:enrichediron>, <minecraft:iron_ingot>, "CARBON");
mods.mekanism.infuser.removeRecipe(<mekanism:otherdust:1>, <mekanism:enrichediron>, "CARBON");
mods.mekanism.infuser.addRecipe("DIAMOND", 100, <mekanism:enrichedalloy>, <mekanism:reinforcedalloy>);
mods.mekanism.infuser.addRecipe("OBSIDIAN", 1000, <mekanism:reinforcedalloy>, <mekanism:atomicalloy>);
mods.mekanism.infuser.addRecipe("CARBON", 100, <minecraft:iron_ingot>, <mekanism:enrichediron>);
mods.mekanism.infuser.addRecipe("CARBON", 100, <mekanism:enrichediron>, <mekanism:otherdust:1>);

//Circuits
mods.mekanism.infuser.removeRecipe(<mekanism:controlcircuit>, <mekanism:ingot:1>, "REDSTONE");
mods.mekanism.infuser.addRecipe("REDSTONE", 100, <mekanism:ingot:1>, <mekanism:controlcircuit>);

recipes.addShaped("CTBasicCircuit", <mekanism:controlcircuit>, [[<techreborn:cable:5>, <techreborn:cable:5>, <techreborn:cable:5>], [<minecraft:redstone>, <ore:ingotRefinedIron>, <minecraft:redstone>], [<techreborn:cable:5>, <techreborn:cable:5>, <techreborn:cable:5>]]);

recipes.remove(<mekanism:controlcircuit:1>);
recipes.addShaped("CTAdvancedCircuit", <mekanism:controlcircuit:1>, [[null, <mekanism:enrichedalloy>, null], [<mekanism:enrichedalloy>, <ore:circuitBasic>, <mekanism:enrichedalloy>], [null, <mekanism:enrichedalloy>, null]]);
recipes.addShaped("CTAdvancedCircuit2", <mekanism:controlcircuit:1>, [[<actuallyadditions:item_crystal_empowered>, <minecraft:glowstone_dust>, <actuallyadditions:item_crystal_empowered>], [<actuallyadditions:item_crystal_empowered:1>, <ore:circuitBasic>, <actuallyadditions:item_crystal_empowered:1>], [<actuallyadditions:item_crystal_empowered>, <minecraft:glowstone_dust>, <actuallyadditions:item_crystal_empowered>]]);

recipes.remove(<mekanism:controlcircuit:2>);
recipes.addShaped("CTEliteCircuit", <mekanism:controlcircuit:2>, [[null, <mekanism:reinforcedalloy>, null], [<mekanism:reinforcedalloy>, <ore:circuitAdvanced>, <mekanism:reinforcedalloy>], [null, <mekanism:reinforcedalloy>, null]]);
recipes.remove(<mekanism:controlcircuit:3>);
recipes.addShaped("CTEliteCircuit2", <mekanism:controlcircuit:2>, [[<ore:circuitAdvanced>, <techreborn:part:2>, <ore:circuitAdvanced>], [<techreborn:part:2>, <ore:ingotIridium>, <techreborn:part:2>], [<ore:circuitAdvanced>, <techreborn:part:2>, <ore:circuitAdvanced>]]);
recipes.remove(<mekanism:controlcircuit:3>);

recipes.addShaped("CTUltimateCircuit", <mekanism:controlcircuit:3>, [[null, <mekanism:atomicalloy>, null], [<mekanism:atomicalloy>, <ore:circuitElite>, <mekanism:atomicalloy>], [null, <mekanism:atomicalloy>, null]]);

//Logistical Sorter
recipes.remove(<mekanism:machineblock:15>);
recipes.addShaped("CTLogisticalSorter", <mekanism:machineblock:15>, [[<ore:ingotIron>, <minecraft:piston>, <ore:ingotIron>], [<ore:ingotIron>, <ore:circuitUltimate>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);

//Configuration Card
recipes.remove(<mekanism:configurationcard>);
recipes.addShaped("CTConfigurationCard", <mekanism:configurationcard>, [[<mekanism:enrichedalloy>, <ore:circuitBasic>, <mekanism:enrichedalloy>]]);

//Steel Casing
recipes.remove(<mekanism:basicblock:8>);
mods.actuallyadditions.Empowerer.addRecipe(<mekanism:basicblock:8>, <enderio:item_material:1>, <techreborn:plates:28>, <techreborn:plates:28>, <techreborn:plates:28>, <techreborn:plates:28>, 500, 100, [0.2, 0.3, 0.5]);

mods.mekanism.solarneutronactivator.addRecipe(<gas:water>, <gas:heavywater>);



//Disable bow
mods.jei.JEI.removeAndHide(<mekanism:electricbow>);

mods.jei.JEI.removeAndHide(<mekanism:flamethrower>);
mods.jei.JEI.removeAndHide(<mekanism:atomicdisassembler>);

mods.jei.JEI.removeAndHide(<mekanism:balloon:*>);
mods.jei.JEI.removeAndHide(<mekanism:glowpanel:*>);

//Murder plastic
mods.jei.JEI.removeAndHide(<mekanism:plasticblock:*>);
mods.jei.JEI.removeAndHide(<mekanism:slickplasticblock:*>);
mods.jei.JEI.removeAndHide(<mekanism:reinforcedplasticblock:*>);
mods.jei.JEI.removeAndHide(<mekanism:glowplasticblock:*>);
mods.jei.JEI.removeAndHide(<mekanism:roadplasticblock:*>);
mods.jei.JEI.removeAndHide(<mekanism:plasticfence:*>);
mods.jei.JEI.removeAndHide(<mekanism:polyethene:1>);
mods.jei.JEI.removeAndHide(<mekanism:polyethene:3>);

//Disable digital miner
mods.jei.JEI.removeAndHide(<mekanism:machineblock:4>);

mods.jei.JEI.removeAndHide(<mekanismgenerators:solarpanel>);



//Remove recipes from disabled types due to ore dictionary unification

mods.mekanism.infuser.removeRecipe(<mekanism:otherdust:5>, <techreborn:dust:35>, "DIAMOND");
mods.mekanism.infuser.removeRecipe(<mekanism:otherdust:5>, <enderio:item_material:29>, "DIAMOND");

mods.mekanism.combiner.removeRecipe(<minecraft:diamond_ore>, <techreborn:dust:16> * 3);
mods.mekanism.combiner.removeRecipe(<minecraft:diamond_ore>, <actuallyadditions:item_dust:2> * 3);

mods.mekanism.combiner.removeRecipe(<minecraft:gold_ore>, <techreborn:dust:24> * 8);
mods.mekanism.combiner.removeRecipe(<minecraft:gold_ore>, <bloodmagic:component:20> * 8);
mods.mekanism.combiner.removeRecipe(<minecraft:gold_ore>, <actuallyadditions:item_dust:1> * 8);
mods.mekanism.combiner.removeRecipe(<minecraft:gold_ore>, <enderio:item_material:25> * 8);

mods.mekanism.combiner.removeRecipe(<minecraft:iron_ore>, <bloodmagic:component:19> * 8);
mods.mekanism.combiner.removeRecipe(<minecraft:iron_ore>, <techreborn:dust:27> * 8);
mods.mekanism.combiner.removeRecipe(<minecraft:iron_ore>, <actuallyadditions:item_dust> * 8);
mods.mekanism.combiner.removeRecipe(<minecraft:iron_ore>, <enderio:item_material:24> * 8);

mods.mekanism.combiner.removeRecipe(<minecraft:obsidian>, <techreborn:dust:35> * 4);
mods.mekanism.combiner.removeRecipe(<minecraft:obsidian>, <enderio:item_material:29> * 4);

//silver
mods.mekanism.combiner.removeRecipe(<techreborn:ore:13>, <techreborn:dust:47> * 8);


//Cleanup enrichment chamber to only have main ores
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:1>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:2>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:3>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:4>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:5>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:6>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:7>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:8>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:9>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:10>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:11>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:12>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:13>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:14>);
mods.mekanism.enrichment.removeRecipe(<mekanism:plasticblock:15>);

mods.mekanism.enrichment.removeRecipe(<thaumcraft:ore_quartz>);
mods.mekanism.enrichment.removeRecipe(<actuallyadditions:item_dust:5>);


mods.mekanism.enrichment.removeRecipe(<actuallyadditions:item_dust:2>);
mods.mekanism.enrichment.removeRecipe(<techreborn:dust:16>);

mods.mekanism.enrichment.removeRecipe(<actuallyadditions:item_dust:3>);

mods.mekanism.enrichment.removeRecipe(<bloodmagic:component:24>);