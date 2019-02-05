#priority -100

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.jei.JEI;


//Actually baubles
hide(itemUtils.getItemsByRegexRegistryName("actuallyadditions:.*bauble"));
JEI.hide(<actuallyadditions:potion_ring_advanced_bauble:*>);

//AE2 Facades
val baseFacade = <appliedenergistics2:facade>.withTag({damage: 0, item: "minecraft:stone"});
for facade in <appliedenergistics2:facade>.definition.subItems {
    if (facade.hasTag && !(baseFacade.matchesExact(facade))) {
        JEI.hide(facade);
    }
}


//Ceramics clay buckets
hideFilledContainers(<ceramics:clay_bucket>);
JEI.hide(<ceramics:clay_bucket:1>);
//TODO: There are still some missing buckets


//Tech Reborn cells
hideFilledContainers(<techreborn:dynamiccell>);
//TODO: There are still some missing cells


//Extra Cells fluid patterns
hideFilledContainers(<extracells:pattern.fluid>);
//TODO: There are still some missing fluid patterns


//Ender IO Soul Vial's and broken spawners
JEI.hide(<enderio:item_broken_spawner:*>);
//TODO: There are still missing soul vials
val soulVials = <enderio:item_soul_vial>.definition.getSubItems(<creativetab:enderio.mobs>) as IItemStack[];
for c in soulVials {
    if (c.hasTag) {
        JEI.hide(c);
    }
}


//Mekanism Creative Gas Tanks
for tank in <mekanism:gastank>.definition.subItems {
    if (tank.hasTag) {
        val tag = tank.tag as IData;
        if ((tag.tier as IData).asInt() == 4 && !isNull(tag.mekData as IData)) {
            JEI.hide(tank);
            val gas = tag.mekData.stored.gasName;
            JEI.hide(<ceramics:clay_bucket>.withTag({"fluids": {"FluidName": ("ec.internal." + gas), "Amount": 1000}}));
            JEI.hide(<techreborn:dynamiccell>.withTag({"Fluid": {"FluidName": ("ec.internal." + gas), "Amount": 1000}}));
            JEI.hide(<extracells:pattern.fluid>.withTag({"Fluid": {"FluidName": ("ec.internal." + gas), "Amount": 1000}}));
        }
    }
}



function hideFilledContainers(container as IItemStack) {
    for c in container.definition.subItems {
        if (c.hasTag) {
            JEI.hide(c);
        }
    }
}

function hide(items as IItemStack[]) {
    for item in items {
        JEI.hide(item);
    }
}