import crafttweaker.item.IItemStack;

recipes.addShaped("CTCreativeModifier", <tconstruct:materials:50>, [[<extendedcrafting:singularity_custom>, <minecraft:skull:1>, <extendedcrafting:singularity_custom>], [<minecraft:skull:1>, <extendedcrafting:singularity_custom:1>, <minecraft:skull:1>], [<extendedcrafting:singularity_custom>, <minecraft:skull:1>, <extendedcrafting:singularity_custom>]]);


//Storage
var creativeBin = <mekanism:basicblock:6>.withTag({tier: 4, mekData: {}}) as IItemStack;
recipes.addShaped("CTCreativeBin", creativeBin, [[<metalchests:metal_chest:5>, <extendedcrafting:singularity_custom>, <metalchests:metal_chest:5>], [<metalchests:metal_chest:5>, <extendedcrafting:singularity_custom:1>, <metalchests:metal_chest:5>], [<metalchests:metal_chest:5>, <extracells:storage.component:3>, <metalchests:metal_chest:5>]]);
recipes.addShaped("CTCreativeStorage", <appliedenergistics2:creative_storage_cell>, [[creativeBin, <extendedcrafting:singularity_custom:1>, creativeBin], [creativeBin, <extendedcrafting:singularity_ultimate>, creativeBin], [creativeBin, <extendedcrafting:singularity_custom:1>, creativeBin]]);


//Energy
var creativeCube = <mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}) as IItemStack;
recipes.addShaped("CTCreativeEnergy", creativeCube, [[<mekanism:basicblock2:3>.withTag({tier: 3}), <solarflux:solar_panel_infinity>, <appliedenergistics2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0})], [<extendedcrafting:singularity_custom:1>, <extendedcrafting:singularity_ultimate>, <extendedcrafting:singularity_custom>], [<mekanismgenerators:reactor>, <extendedcrafting:singularity_custom:2>, <techreborn:fusion_control_computer>]]);

recipes.addShapeless("CTCreativeCapacitor", <enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}), [creativeCube]);
recipes.addShapeless("CTCreativeCell", <appliedenergistics2:creative_energy_cell>, [<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000})]);
recipes.addShapeless("CTCreativeCube", creativeCube, [<appliedenergistics2:creative_energy_cell>]);


//Liquid
var creativeFluid = <mekanism:machineblock2:11>.withTag({tier: 4, mekData: {}}) as IItemStack;
recipes.addShaped("CTCreativeFluid", creativeFluid, [[<bloodmagic:blood_tank:15>, <extendedcrafting:singularity_custom:2>, <bloodmagic:blood_tank:15>], [<bloodmagic:blood_tank:15>, creativeCube, <bloodmagic:blood_tank:15>], [<bloodmagic:blood_tank:15>, <extracells:storage.component:10>, <bloodmagic:blood_tank:15>]]);

//Gas
var creativeGas = <mekanism:gastank>.withTag({tier: 4, mekData: {}}) as IItemStack;
recipes.addShaped("CTCreativeGas", creativeGas, [[creativeFluid, <mekanism:basicblock:14>, creativeFluid], [<mekanism:machineblock3:4>, <extendedcrafting:singularity_ultimate>, <mekanism:machineblock3:4>], [creativeFluid, <extracells:storage.component:17>, creativeFluid]]);


//Mana
recipes.addShaped("CTCreativeMana", <botania:pool:1>, [[creativeFluid, <extrabotany:quantummanabuffer>, creativeFluid], [creativeGas, <extendedcrafting:singularity_ultimate>, creativeGas], [creativeFluid, <botania:pylon>, creativeFluid]]);

recipes.addShapeless("CTInfiniteManaTablet", <botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}), [<botania:pool:1>, <extrabotany:mastermanaring>]);