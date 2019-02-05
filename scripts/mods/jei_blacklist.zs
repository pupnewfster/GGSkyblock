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
JEI.hide(<ceramics:clay_bucket:1>);

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

function hideECInternal(gas as string) {
	hideFluid("ec.internal." + gas);
}

function hideFluid(fluid as string) {
	JEI.hide(<ceramics:clay_bucket>.withTag({"fluids": {"FluidName": fluid, "Amount": 1000}}));
	JEI.hide(<techreborn:dynamiccell>.withTag({"Fluid": {"FluidName": fluid, "Amount": 1000}}));
	JEI.hide(<extracells:pattern.fluid>.withTag({"Fluid": {"FluidName": fluid, "Amount": 1000}}));
}