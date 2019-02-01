#priority 600

import mods.mekatweaker.GasFactory;
import mods.mekatweaker.Gas;

import crafttweaker.liquid.ILiquidStack;

val liquids = [
    <liquid:heavywater>,
    <liquid:aeternalis>,
    <liquid:dirty_dark_matter>,
    <liquid:dark_matter>,
    <liquid:red_matter>,
    <liquid:heavy_red_matter>,
    <liquid:orange_matter>,
    <liquid:yellow_matter>,
    <liquid:green_matter>,
    <liquid:blue_matter>,

    <liquid:lifeessence>,
    <liquid:refined_life_essence>,

    <liquid:tier14>,
    <liquid:tier18>,
    <liquid:tier19>,

    <liquid:tier25blood>,
    <liquid:tier30_dirty>,
    <liquid:tier30_clean>
] as ILiquidStack[];

for liquid in liquids {
    GasFactory.createFromFluid(liquid).register();
}