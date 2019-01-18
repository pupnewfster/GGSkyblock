#modloaded avaritia

import crafttweaker.item.IItemStack;

<extendedcrafting:singularity_ultimate>.displayName = "Infinity Singularity";
mods.avaritia.Compressor.add("CTInfinitySingularity", <extendedcrafting:singularity_ultimate>, 100000, <avaritia:block_resource:1>);

mods.avaritia.Compressor.add("CTDarkMatterSingularity", <extendedcrafting:singularity_custom>, 5000, <projecte:matter_block>);
mods.avaritia.Compressor.add("CTRedMatterSingularity", <extendedcrafting:singularity_custom:1>, 10000, <projecte:matter_block:1>);
mods.avaritia.Compressor.add("CTOrangeMatterSingularity", <extendedcrafting:singularity_custom:2>, 10000, <auxiliumequivalence:matter_block>);
mods.avaritia.Compressor.add("CTYellowMatterSingularity", <extendedcrafting:singularity_custom:3>, 10000, <auxiliumequivalence:matter_block:1>);
mods.avaritia.Compressor.add("CTGreenMatterSingularity", <extendedcrafting:singularity_custom:4>, 10000, <auxiliumequivalence:matter_block:2>);
mods.avaritia.Compressor.add("CTBlueMatterSingularity", <extendedcrafting:singularity_custom:5>, 10000, <auxiliumequivalence:matter_block:3>);


var neutronium = <avaritia:resource:4> as IItemStack;
var infinity = <avaritia:resource:6> as IItemStack;
var singularity = <extendedcrafting:singularity_ultimate> as IItemStack;
var catalyst = <avaritia:resource:5> as IItemStack;
var crystal = <avaritia:resource:1> as IItemStack;
var nugget = <avaritia:resource:3> as IItemStack;

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_helmet>);
mods.avaritia.ExtremeCrafting.addShaped("CTInfinityHelmet", <avaritia:infinity_helmet>, [
[null, null, neutronium, neutronium, neutronium, neutronium, neutronium, null, null],
[null, neutronium, infinity, infinity, infinity, infinity, infinity, neutronium, null],
[null, neutronium, null, catalyst, infinity, catalyst, null, neutronium, null],
[null, neutronium, infinity, infinity, singularity, infinity, infinity, neutronium, null],
[null, neutronium, infinity, infinity, infinity, infinity, infinity, neutronium, null],
[null, neutronium, infinity, null, infinity, null, infinity, neutronium, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_chestplate>);
mods.avaritia.ExtremeCrafting.addShaped("CTInfinityChestplate", <avaritia:infinity_chestplate>, [
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

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_pants>);
mods.avaritia.ExtremeCrafting.addShaped("CTInfinityLeggings", <avaritia:infinity_pants>, [
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

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_boots>);
mods.avaritia.ExtremeCrafting.addShaped("CTInfinityBoots", <avaritia:infinity_boots>, [
[null, neutronium, neutronium, neutronium, singularity, neutronium, neutronium, neutronium, null],
[null, neutronium, infinity, neutronium, null, neutronium, infinity, neutronium, null],
[null, neutronium, infinity, neutronium, null, neutronium, infinity, neutronium, null],
[neutronium, neutronium, infinity, neutronium, null, neutronium, infinity, neutronium, neutronium],
[neutronium, infinity, infinity, neutronium, null, neutronium, infinity, infinity, neutronium],
[neutronium, neutronium, neutronium, neutronium, null, neutronium, neutronium, neutronium, neutronium]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_shovel>);
mods.avaritia.ExtremeCrafting.addShaped("CTInfinityShovel", <avaritia:infinity_shovel>, [
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

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_axe>);
mods.avaritia.ExtremeCrafting.addShaped("CTInfinityAxe", <avaritia:infinity_axe>, [
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

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_pickaxe>);
mods.avaritia.ExtremeCrafting.addShaped("CTInfinityPick", <avaritia:infinity_pickaxe>, [
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

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_hoe>);
mods.avaritia.ExtremeCrafting.addShaped("CTInfinityHoe", <avaritia:infinity_hoe>, [
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

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_sword>);
mods.avaritia.ExtremeCrafting.addShaped("CTInfinitySword", <avaritia:infinity_sword>, [
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

mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_bow>);
mods.avaritia.ExtremeCrafting.addShaped("CTInfinityBow", <avaritia:infinity_bow>, [
[null, null, null, infinity, infinity, null, null, null, null],
[null, null, infinity, null, <minecraft:wool>, null, null, null, null],
[null, infinity, null, null, <minecraft:wool>, null, null, null, null],
[infinity, null, null, null, <minecraft:wool>, null, null, null, null],
[singularity, null, null, null, <minecraft:wool>, null, null, null, null],
[infinity, null, null, null, <minecraft:wool>, null, null, null, null],
[null, infinity, null, null, <minecraft:wool>, null, null, null, null],
[null, null, infinity, null, <minecraft:wool>, null, null, null, null],
[null, null, null, infinity, infinity, null, null, null, null]
]);

mods.avaritia.ExtremeCrafting.remove(<avaritiatweaks:enhancement_crystal>);
mods.avaritia.ExtremeCrafting.addShaped("CTEnhancementCrystal", <avaritiatweaks:enhancement_crystal>, [
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

mods.avaritia.ExtremeCrafting.remove(<botania:specialflower>.withTag({type: "asgardandelion"}));
mods.avaritia.ExtremeCrafting.addShaped("CTInfinityFlower", <botania:specialflower>.withTag({type: "asgardandelion"}), [
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

mods.avaritia.ExtremeCrafting.remove(<solarflux:solar_panel_neutronium>);
mods.avaritia.ExtremeCrafting.addShaped("CTNeutroniumPanel", <solarflux:solar_panel_neutronium> * 2, [[null, null, neutronium, neutronium, null, neutronium, neutronium, null, null], [null, neutronium, crystal, crystal, <solarflux:solar_panel_8>, crystal, crystal, neutronium, null], [neutronium, crystal, null, null, nugget, null, null, crystal, neutronium], [neutronium, crystal, null, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, null, crystal, neutronium], [null, <solarflux:solar_panel_8>, nugget, <avaritia:resource:2>, singularity, <avaritia:resource:2>, nugget, <solarflux:solar_panel_8>, null], [neutronium, crystal, null, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, null, crystal, neutronium], [neutronium, crystal, null, null, nugget, null, null, crystal, neutronium], [null, neutronium, crystal, crystal, <solarflux:solar_panel_8>, crystal, crystal, neutronium, null], [null, null, neutronium, neutronium, null, neutronium, neutronium, null, null]]);