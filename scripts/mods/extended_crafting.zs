#modloaded extendedcrafting

import crafttweaker.item.IItemStack;

mods.jei.JEI.hide(<extendedcrafting:crafting_table>);
mods.jei.JEI.removeAndHide(<extendedcrafting:lamp>);
mods.jei.JEI.removeAndHide(<extendedcrafting:lamp:1>);
mods.jei.JEI.removeAndHide(<extendedcrafting:trimmed>);
mods.jei.JEI.removeAndHide(<extendedcrafting:trimmed:1>);
mods.jei.JEI.removeAndHide(<extendedcrafting:trimmed:2>);
mods.jei.JEI.removeAndHide(<extendedcrafting:trimmed:3>);
mods.jei.JEI.removeAndHide(<extendedcrafting:trimmed:4>);
mods.jei.JEI.removeAndHide(<extendedcrafting:trimmed:5>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:1>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:3>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:25>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:128>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:129>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:140>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:49>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:48>);
mods.jei.JEI.removeAndHide(<extendedcrafting:storage:7>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:41>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:40>);
mods.jei.JEI.removeAndHide(<extendedcrafting:storage:3>);
mods.jei.JEI.removeAndHide(<extendedcrafting:storage:6>);
mods.jei.JEI.removeAndHide(<extendedcrafting:storage>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:36>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:37>);
mods.jei.JEI.removeAndHide(<extendedcrafting:storage:5>);
mods.jei.JEI.removeAndHide(<extendedcrafting:storage:4>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:32>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:33>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:13>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:19>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:12>);
mods.jei.JEI.removeAndHide(<extendedcrafting:storage:1>);
recipes.removeByRecipeName("extendedcrafting:diamond_nugget_to");
recipes.removeByRecipeName("extendedcrafting:black_iron_ingot_to");
recipes.removeByRecipeName("extendedcrafting:nether_star_nugget_to");
recipes.removeByRecipeName("extendedcrafting:block_of_black_iron_from");
recipes.removeByRecipeName("extendedcrafting:block_of_luminessence_from");

recipes.remove(<extendedcrafting:material:24>);

mods.extendedcrafting.TableCrafting.remove(<extendedcrafting:material:24>);

mods.extendedcrafting.TableCrafting.addShaped(<extendedcrafting:material:24>, [
[<ore:gemDiamond>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemDiamond>], 
[<ore:gemDiamond>, null, <ore:ingotIron>, <ore:ingotGold>, <ore:ingotIron>, null, <ore:gemDiamond>], 
[<ore:gemDiamond>, null, <ore:ingotIron>, <ore:ingotGold>, <ore:ingotIron>, null, <ore:gemDiamond>], 
[<ore:gemDiamond>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>, <ore:gemDiamond>], 
[null, null, null, null, null, null, null], 
[null, null, null, null, null, null, null], 
[null, null, null, null, null, null, null]
]);


var neutronium = <avaritia:resource:4> as IItemStack;
var infinity = <avaritia:resource:6> as IItemStack;
var singularity = <extendedcrafting:singularity_ultimate> as IItemStack;
var catalyst = <avaritia:resource:5> as IItemStack;
var crystal = <avaritia:resource:1> as IItemStack;
var nugget = <avaritia:resource:3> as IItemStack;

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:infinity_helmet>, [
[null, null, neutronium, neutronium, neutronium, neutronium, neutronium, null, null],
[null, neutronium, infinity, infinity, infinity, infinity, infinity, neutronium, null],
[null, neutronium, null, catalyst, infinity, catalyst, null, neutronium, null],
[null, neutronium, infinity, infinity, singularity, infinity, infinity, neutronium, null],
[null, neutronium, infinity, infinity, infinity, infinity, infinity, neutronium, null],
[null, neutronium, infinity, null, infinity, null, infinity, neutronium, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:infinity_chestplate>, [
[null, neutronium, neutronium, null, null, null, neutronium, neutronium, null],
[neutronium, neutronium, neutronium, null, null, null, neutronium, neutronium, neutronium],
[neutronium, neutronium, neutronium, null, null, null, neutronium, neutronium, neutronium],
[null, neutronium, infinity, infinity, infinity, infinity, infinity, neutronium, null],
[null, neutronium, infinity, infinity, singularity, infinity, infinity, neutronium, null],
[null, neutronium, infinity, infinity, infinity, infinity, infinity, neutronium, null],
[null, neutronium, infinity, infinity, singularity, infinity, infinity, neutronium, null],
[null, neutronium, infinity, infinity, infinity, infinity, infinity, neutronium, null],
[null, null, neutronium, neutronium, neutronium, neutronium, neutronium, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:infinity_pants>, [
[neutronium, neutronium, neutronium, neutronium, neutronium, neutronium, neutronium, neutronium, neutronium],
[neutronium, infinity, infinity, infinity, singularity, infinity, infinity, infinity, neutronium],
[neutronium, infinity, neutronium, neutronium, singularity, neutronium, neutronium, infinity, neutronium],
[neutronium, infinity, neutronium, null, null, null, neutronium, infinity, neutronium],
[neutronium, infinity, neutronium, null, null, null, neutronium, infinity, neutronium],
[neutronium, infinity, neutronium, null, null, null, neutronium, infinity, neutronium],
[neutronium, infinity, neutronium, null, null, null, neutronium, infinity, neutronium],
[neutronium, infinity, neutronium, null, null, null, neutronium, infinity, neutronium],
[neutronium, neutronium, neutronium, null, null, null, neutronium, neutronium, neutronium]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:infinity_boots>, [
[null, neutronium, neutronium, neutronium, singularity, neutronium, neutronium, neutronium, null],
[null, neutronium, infinity, neutronium, null, neutronium, infinity, neutronium, null],
[null, neutronium, infinity, neutronium, null, neutronium, infinity, neutronium, null],
[neutronium, neutronium, infinity, neutronium, null, neutronium, infinity, neutronium, neutronium],
[neutronium, infinity, infinity, neutronium, null, neutronium, infinity, infinity, neutronium],
[neutronium, neutronium, neutronium, neutronium, null, neutronium, neutronium, neutronium, neutronium]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:infinity_shovel>, [
[null, null, null, null, null, null, infinity, infinity, infinity],
[null, null, null, null, null, infinity, infinity, singularity, infinity],
[null, null, null, null, null, null, infinity, infinity, infinity],
[null, null, null, null, null, neutronium, null, infinity, null],
[null, null, null, null, neutronium, null, null, null, null],
[null, null, null, neutronium, null, null, null, null, null],
[null, null, neutronium, null, null, null, null, null, null],
[null, neutronium, null, null, null, null, null, null, null],
[neutronium, null, null, null, null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:infinity_axe>, [
[null, null, null, infinity, null, null, null, null, null],
[null, null, infinity, infinity, infinity, infinity, infinity, null, null],
[null, null, null, infinity, infinity, infinity, infinity, null, null],
[null, null, null, null, null, infinity, singularity, null, null],
[null, null, null, null, null, null, neutronium, null, null],
[null, null, null, null, null, null, neutronium, null, null],
[null, null, null, null, null, null, neutronium, null, null],
[null, null, null, null, null, null, neutronium, null, null],
[null, null, null, null, null, null, neutronium, null, null],
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:infinity_pickaxe>, [
[null, infinity, infinity, infinity, infinity, infinity, infinity, infinity, null],
[infinity, infinity, infinity, infinity, singularity, infinity, infinity, infinity, infinity],
[infinity, infinity, null, null, neutronium, null, null, infinity, infinity],
[null, null, null, null, neutronium, null, null, null, null],
[null, null, null, null, neutronium, null, null, null, null],
[null, null, null, null, neutronium, null, null, null, null],
[null, null, null, null, neutronium, null, null, null, null],
[null, null, null, null, neutronium, null, null, null, null],
[null, null, null, null, neutronium, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:infinity_hoe>, [
[null, null, null, null, null, null, singularity, null, null],
[null, null, infinity, infinity, infinity, infinity, infinity, infinity, null],
[null, infinity, infinity, infinity, infinity, infinity, infinity, infinity, null],
[null, infinity, null, null, null, null, infinity, infinity, null],
[null, null, null, null, null, null, neutronium, null, null],
[null, null, null, null, null, null, neutronium, null, null],
[null, null, null, null, null, null, neutronium, null, null],
[null, null, null, null, null, null, neutronium, null, null],
[null, null, null, null, null, null, neutronium, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:infinity_sword>, [
[null, null, null, null, null, null, null, infinity, infinity],
[null, null, null, null, null, null, infinity, infinity, infinity],
[null, null, null, null, null, infinity, infinity, infinity, null],
[null, null, null, null, infinity, infinity, infinity, null, null],
[null, crystal, null, infinity, infinity, infinity, null, null, null],
[null, null, crystal, infinity, infinity, null, null, null, null],
[null, null, neutronium, crystal, null, null, null, null, null],
[null, neutronium, null, null, crystal, null, null, null, null],
[singularity, null, null, null, null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:infinity_bow>, [
[null, null, null, infinity, infinity, null, null, null, null],
[null, null, infinity, null, <ore:blockWool>, null, null, null, null],
[null, infinity, null, null, <ore:blockWool>, null, null, null, null],
[infinity, null, null, null, <ore:blockWool>, null, null, null, null],
[singularity, null, null, null, <ore:blockWool>, null, null, null, null],
[infinity, null, null, null, <ore:blockWool>, null, null, null, null],
[null, infinity, null, null, <ore:blockWool>, null, null, null, null],
[null, null, infinity, null, <ore:blockWool>, null, null, null, null],
[null, null, null, infinity, infinity, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritiatweaks:enhancement_crystal>, [
[null, null, null, null, neutronium, null, null, null, null],
[null, null, null, neutronium, crystal, neutronium, null, null, null],
[null, null, neutronium, crystal, crystal, crystal, neutronium, null, null],
[null, null, neutronium, catalyst, crystal, catalyst, neutronium, null, null],
[null, null, neutronium, crystal, singularity, crystal, neutronium, null, null],
[null, null, neutronium, catalyst, crystal, catalyst, neutronium, null, null],
[null, null, neutronium, crystal, crystal, crystal, neutronium, null, null],
[null, null, null, neutronium, crystal, neutronium, null, null, null],
[null, null, null, null, neutronium, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(<botania:specialflower>.withTag({type: "asgardandelion"}), [
[null, null, null, infinity, infinity, infinity, null, null, null],
[null, null, infinity, infinity, infinity, infinity, infinity, null, null],
[null, null, infinity, infinity, singularity, infinity, infinity, null, null],
[null, null, infinity, infinity, infinity, infinity, infinity, null, null],
[null, null, null, infinity, infinity, infinity, null, null, null],
[null, nugget, nugget, null, neutronium, null, nugget, nugget, null],
[nugget, nugget, nugget, nugget, neutronium, nugget, nugget, nugget, nugget],
[null, nugget, nugget, null, neutronium, null, nugget, nugget, null],
[null, null, null, null, neutronium, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritiatweaks:infinitato>, [
[<botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>], 
[<botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>], 
[<botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <ore:gemDiamond>, <botania:tinypotato>, <ore:gemDiamond>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>], 
[<botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>], 
[<botania:tinypotato>, <botania:tinypotato>, <ore:gemDiamond>, <botania:tinypotato>, catalyst, <botania:tinypotato>, <ore:gemDiamond>, <botania:tinypotato>, <botania:tinypotato>], 
[<botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>], 
[<botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>], 
[<botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>], 
[<botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>, <botania:tinypotato>]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:neutron_collector>, [
[<ore:blockIron>, <ore:blockIron>, <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockIron>, <ore:blockIron>], 
[<ore:blockIron>, null, <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>, null, <ore:blockIron>], 
[<ore:blockIron>, null, null, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, null, null, <ore:blockIron>], 
[crystal, null, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, null, crystal], 
[<ore:blockIron>, null, <ore:blockRedstone>, <ore:blockRedstone>, crystal, <ore:blockRedstone>, <ore:blockRedstone>, null, <ore:blockIron>], 
[crystal, null, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, null, crystal], 
[<ore:blockIron>, null, null, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, null, null, <ore:blockIron>], 
[<ore:blockIron>, null, null, null, null, null, null, null, <ore:blockIron>], 
[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>, crystal, <ore:blockIron>, crystal, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:neutronium_compressor>, [
[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>, <ore:blockHopper>, <ore:blockHopper>, <ore:blockHopper>, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>], 
[crystal, null, neutronium, null, null, null, neutronium, null, crystal], 
[<ore:blockIron>, null, neutronium, null, null, null, neutronium, null, <ore:blockIron>], 
[crystal, null, neutronium, null, null, null, neutronium, null, crystal], 
[<ore:blockRedstone>, neutronium, neutronium, null, <ore:blockCosmicNeutronium>, null, neutronium, neutronium, <ore:blockRedstone>], 
[crystal, null, neutronium, null, null, null, neutronium, null, crystal], 
[<ore:blockIron>, null, neutronium, null, null, null, neutronium, null, <ore:blockIron>], 
[crystal, null, neutronium, null, null, null, neutronium, null, crystal], 
[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>, crystal, <ore:blockIron>, crystal, <ore:blockIron>, <ore:blockIron>, <ore:blockIron>]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:endest_pearl>, [
[null, null, null, <ore:endstone>, <ore:endstone>, <ore:endstone>, null, null, null], 
[null, <ore:endstone>, <ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>, <ore:endstone>, null], 
[null, <ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>, null], 
[<ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, neutronium, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>], 
[<ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, neutronium, <ore:netherStar>, neutronium, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>], 
[<ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, neutronium, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>], 
[null, <ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>, null], 
[null, <ore:endstone>, <ore:endstone>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:endstone>, <ore:endstone>, null], 
[null, null, null, <ore:endstone>, <ore:endstone>, <ore:endstone>, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:resource:6>, [
[null, null, null, null, null, null, null, null, null], 
[null, null, null, null, null, null, null, null, null], 
[neutronium, neutronium, neutronium, neutronium, neutronium, neutronium, neutronium, neutronium, neutronium], 
[neutronium, crystal, catalyst, catalyst, crystal, catalyst, catalyst, crystal, neutronium], 
[neutronium, catalyst, crystal, crystal, catalyst, crystal, crystal, catalyst, neutronium], 
[neutronium, crystal, catalyst, catalyst, crystal, catalyst, catalyst, crystal, neutronium], 
[neutronium, neutronium, neutronium, neutronium, neutronium, neutronium, neutronium, neutronium, neutronium], 
[null, null, null, null, null, null, null, null, null], 
[null, null, null, null, null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(<avaritia:skullfire_sword>, [
[null, null, null, null, null, null, null, crystal, <ore:powderBlaze>], 
[null, null, null, null, null, null, crystal, <ore:powderBlaze>, crystal], 
[null, null, null, null, null, crystal, <ore:powderBlaze>, crystal, null], 
[null, null, null, null, crystal, <ore:powderBlaze>, crystal, null, null], 
[null, <ore:bone>, null, crystal, <ore:powderBlaze>, crystal, null, null, null], 
[null, null, <ore:bone>, <ore:powderBlaze>, crystal, null, null, null, null], 
[null, null, <ore:logWood>, <ore:bone>, null, null, null, null, null], 
[null, <ore:logWood>, null, null, <ore:bone>, null, null, null, null], 
[<ore:netherStar>, null, null, null, null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShapeless(<avaritia:ultimate_stew>, [<avaritia:resource:2>, <ore:cropWheat>, <ore:cropCarrot>, <ore:cropPotato>, <ore:blockCactus>, <ore:cropMushroomRed>, <ore:cropMushroomBrown>, <ore:cropNetherWart>, <ore:cropRice>, <ore:cropCanola>, <ore:cropFlax>, <ore:cropCoffee>]);

mods.extendedcrafting.TableCrafting.addShapeless(<avaritia:cosmic_meatballs>, [<avaritia:resource:2>, <minecraft:beef>, <minecraft:beef>, <minecraft:chicken>, <minecraft:chicken>, <minecraft:porkchop>, <minecraft:porkchop>, <minecraft:rabbit>, <minecraft:rabbit>, <ore:fish>, <ore:fish>]);

mods.extendedcrafting.TableCrafting.addShapeless(catalyst, [<avaritia:resource>, crystal, <avaritia:resource:2>, <avaritia:resource:3>, neutronium, <avaritia:ultimate_stew>, <avaritia:cosmic_meatballs>, <avaritia:endest_pearl>, <avaritia:resource:7>, <avaritia:singularity>, <avaritia:singularity:1>, <avaritia:singularity:2>, <avaritia:singularity:3>, <avaritia:singularity:4>, <avaritia:singularity:10>, <avaritia:singularity:11>, <avaritia:singularity:5>, <avaritia:singularity:6>, <avaritia:singularity:7>, <avaritia:singularity:8>, <avaritia:singularity:9>, <ore:blockSteel>, <ore:blockDarkSteel>, <avaritia:singularity:13>, <avaritia:singularity:14>, <ore:singularityArdite>, <ore:singularityAstralStarmetal>, <ore:singularityCobalt>, <ore:singularityOsmium>, <ore:singularityTungsten>, <ore:singularityAmber>, <ore:singularityAquamarine>, <ore:singularityCertusQuartz>, <ore:singularityCoal>, <ore:singularityPeridot>, <ore:singularityQuartzBlack>, <ore:singularityRuby>, <ore:singularitySapphire>, <ore:singularityBauxite>, <ore:singularityCinnabar>, <ore:singularityGalena>, <ore:singularityPyrite>, <ore:singularitySodalite>, <ore:singularitySphalerite>]);


mods.extendedcrafting.TableCrafting.addShaped(<solarflux:solar_panel_neutronium> * 2, [[null, null, neutronium, neutronium, null, neutronium, neutronium, null, null], [null, neutronium, crystal, crystal, <solarflux:solar_panel_8>, crystal, crystal, neutronium, null], [neutronium, crystal, null, null, nugget, null, null, crystal, neutronium], [neutronium, crystal, null, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, null, crystal, neutronium], [null, <solarflux:solar_panel_8>, nugget, <avaritia:resource:2>, singularity, <avaritia:resource:2>, nugget, <solarflux:solar_panel_8>, null], [neutronium, crystal, null, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, null, crystal, neutronium], [neutronium, crystal, null, null, nugget, null, null, crystal, neutronium], [null, neutronium, crystal, crystal, <solarflux:solar_panel_8>, crystal, crystal, neutronium, null], [null, null, neutronium, neutronium, null, neutronium, neutronium, null, null]]);