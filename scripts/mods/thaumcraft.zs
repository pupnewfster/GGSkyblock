#modloaded thaumcraft

import mods.botania.ManaInfusion.addAlchemy;
import mods.extrabotany.Pedestal;

addAlchemy(<thaumcraft:vishroom>, <minecraft:brown_mushroom>, 500);
addAlchemy(<thaumcraft:vishroom>, <minecraft:red_mushroom>, 500);


Pedestal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <appliedenergistics2:sky_stone_block>);
Pedestal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), <minecraft:grass>);
Pedestal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), <minecraft:magma>);
Pedestal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), <chisel:waterstone>);
Pedestal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), <minecraft:packed_ice>);
Pedestal.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}), <minecraft:obsidian>);