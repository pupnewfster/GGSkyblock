#priority -100

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.jei.JEI;


//AE2 Facades
val baseFacade = <appliedenergistics2:facade>.withTag({damage: 0, item: "minecraft:stone"});
for facade in <appliedenergistics2:facade>.definition.subItems {
    if (facade.hasTag && !(baseFacade.matchesExact(facade))) {
        JEI.hide(facade);
    }
}


//Ender IO Soul Vial's and broken spawners
JEI.hide(<enderio:item_broken_spawner:*>);
for soul in <enderio:item_soul_vial>.definition.getSubItems(<creativetab:enderio.mobs>) {
    if (soul.hasTag) {
        JEI.hide(soul);
    }
}

val lateEntities = [
    "mekanism:robit",
    "mekanism:babyskeleton",
    "extrabotany:gaiaiii",
    "extrabotany:skullminion",
    "extrabotany:darkpixie"
] as string[];

for entity in lateEntities {
    JEI.hide(<enderio:item_soul_vial>.withTag({entityId: entity}));
}


//Mekanism Creative Gas Tanks
for tank in <mekanism:gastank>.definition.subItems {
    if (tank.hasTag) {
        val tag = tank.tag as IData;
        if ((tag.tier as IData).asInt() == 4 && !isNull(tag.mekData as IData)) {
            JEI.hide(tank);
            hideECInternal(tag.mekData.stored.gasName);
        }
    }
}

//Fluids

//Ceramics clay buckets
hideFilledContainers(<ceramics:clay_bucket>);

//Tech Reborn cells
hideFilledContainers(<techreborn:dynamiccell>);


//Extra Cells fluid patterns
hideFilledContainers(<extracells:pattern.fluid>);

hideFluid("betterquesting.placeholder");
hideECInternal("liquidosmium");

val lateSlurry = [
    "iron",
    "gold",
    "osmium",
    "copper",
    "tin",
    "silver",
    "lead"
] as string[];

val lateJaopcaSlurry = [
    "ardite",
    "astralstarmetal",
    "cobalt",
    "iridium",
    "tungsten"
] as string[];

for slurry in lateSlurry {
    hideECInternal(slurry);
    hideECInternal("clean" + slurry);
}

for slurry in lateJaopcaSlurry {
    hideECInternal("slurry" + slurry);
    hideECInternal("slurryclean" + slurry);
}


var toHide as IItemStack[] = [
    //Actually Additions
    <actuallyadditions:item_solidified_experience>,
    <actuallyadditions:item_worm>,
    <actuallyadditions:item_hairy_ball>,
    <actuallyadditions:item_misc:10>,
    <actuallyadditions:item_misc:11>,
    <actuallyadditions:item_misc:15>,
    <actuallyadditions:block_black_lotus>,

    //Ceramics
    <ceramics:clay_bucket:1>,

    //Creative Items
    <bloodmagic:activation_crystal:2>,
    <bloodmagic:sacrificial_dagger:1>,
    <enderio:block_buffer:3>,
    <enderio:block_creative_spawner>,
    <littletiles:screwdriver>,
    <mekanism:energycube>.withTag({tier: 4, mekData: {}}),
    <storagedrawers:upgrade_creative>,
    <storagedrawers:upgrade_creative:1>,
    <theoneprobe:creativeprobe>,
    <techreborn:creative_solar_panel>,
    <techreborn:creative_quantum_tank>,
    <techreborn:creative_quantum_chest>,
    <thaumcraft:creative_flux_sponge>,
    <wct:wct_creative>,

    //Ender IO
    <enderio:item_material:3>,

    //Extended Crafting
    <extendedcrafting:crafting_table>,

    //Mystical Agriculture
    <mysticalagriculture:fertilized_essence>,
    <mysticalagriculture:experience_seeds>,
    <mysticalagriculture:experience_essence>,

    //ProjectE
    <projecte:item.pe_manual>,

    //Tech Reborn
    <techreborn:magic_energy_converter>,
    <techreborn:magic_energy_absorber>,
    <techreborn:omnitool>
];

hide(toHide);


var regexHide as string[] = [
    //Actually Additions
    "actuallyadditions:block_crystal_cluster_.*",
    "actuallyadditions:.*bauble",

    //Mystical Agriculture
    "mysticalagriculture:.*_inferium_seeds",
    "mysticalagriculture:((?!(essence|seeds)).)*$"
];

for regex in regexHide {
    hideAllByRegex(regex);
}



function hideFilledContainers(container as IItemStack) {
    for c in container.definition.subItems {
        if (c.hasTag) {
            JEI.hide(c);
        }
    }
}

function hideByRegex(regex as string) {
    hide(itemUtils.getItemsByRegexRegistryName(regex));
}

function hideAllByRegex(regex as string) {
    val items as IItemStack[] = itemUtils.getItemsByRegexRegistryName(regex);
    for item in items {
        JEI.hide(item);
        for subItem in item.definition.subItems {
            JEI.hide(subItem);
        }
    }
}

function hide(items as IItemStack[]) {
    for item in items {
        JEI.hide(item);
    }
}

function hideECInternal(gas as string) {
    hideFluid("ec.internal." + gas);
}

function hideFluid(fluid as string) {
    JEI.hide(<ceramics:clay_bucket>.withTag({"fluids": {"FluidName": fluid, "Amount": 1000}}));
    JEI.hide(<techreborn:dynamiccell>.withTag({"Fluid": {"FluidName": fluid, "Amount": 1000}}));
    JEI.hide(<extracells:pattern.fluid>.withTag({"Fluid": {"FluidName": fluid, "Amount": 1000}}));
}