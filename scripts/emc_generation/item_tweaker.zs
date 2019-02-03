#loader contenttweaker

import scripts.emc_generation.cot_lookup.colorLookup;

import mods.contenttweaker.IItemColorSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;

import crafttweaker.item.IItemStack;


static customItems as int[string] = {
	reconstructed_tier24 : colorLookup.lime,
	empowered_tier25 : colorLookup.lime,
	reconstructed_tier27_seeds : colorLookup.lime,
	empowered_tier27_seeds : colorLookup.lime,
	tier28_alchemy : colorLookup.lime,

	metallic_tier22_seeds : colorLookup.tier1,
	composting_tier24_seeds : 0xCD853F,
	tier28_elven : colorLookup.aqua,
	blood_tier23_seeds : colorLookup.blood,
	blood_tier25_seeds : colorLookup.blood,
	bloody_tier27 : colorLookup.blood,

	tier23alloy : colorLookup.tier23,
	mundane_tier33_seeds : colorLookup.tier32,
	plated_tier33_seeds : 0xF200FF,
	empowered_plated_tier33_seeds : colorLookup.tier33,

	tier34_seed_component : colorLookup.tier34,
	reconstructed_tier34_component : 0x6AFF26,
	charred_tier34_part : 0x252525,

	tier35_beam : colorLookup.tier35,
	elvish_tier35_beam : colorLookup.tier35,
	tier35_bolt : colorLookup.tier35,
	reconstructed_tier35_bolt : colorLookup.tier35,
	tier35_gear : colorLookup.tier35,
	crushed_tier35_gear : colorLookup.tier35,
	enriched_crushed_tier35_gear : colorLookup.tier35
} as int[string];


createMysticalItem("reconstructed_tier24", "redstone_alloy_essence", false);
createMysticalItem("empowered_tier25", "conductive_iron_essence", true);
createMysticalItem("reconstructed_tier27_seeds", "dark_steel_seeds", false);
createMysticalItem("empowered_tier27_seeds", "dark_steel_seeds", true);
createMysticalItem("tier28_alchemy", "pulsating_iron_essence", true);
createMysticalItem("metallic_tier22_seeds", "manyullyn_seeds", false);
createMysticalItem("composting_tier24_seeds", "redstone_alloy_seeds", false);
createMysticalItem("tier28_elven", "pulsating_iron_essence", true);
createMysticalItem("blood_tier23_seeds", "electrical_steel_seeds", false);
createMysticalItem("blood_tier25_seeds", "conductive_iron_seeds", false);
createMysticalItem("bloody_tier27", "dark_steel_essence", false);

createBaseItem("tier23alloy", "plate", false);

createMysticalItem("mundane_tier33_seeds", "elementium_seeds", false);
createItem("plated_tier33_seeds", "tconstruct:items/cast", false);
createItem("empowered_plated_tier33_seeds", "tconstruct:items/cast", true);

createItem("tier34_seed_component", "enderio:items/item_material_plantbrown", false);
createItem("reconstructed_tier34_component", "enderio:items/item_material_plantbrown", false);
createItem("charred_tier34_part", "enderio:items/item_material_plantbrown", false);

createJaopcaItem("tier30", "crystal");
createJaopcaItem("tier30", "shard");
createJaopcaItem("tier30", "clump");
createJaopcaItem("tier30", "dust");

createBaseItem("tier35_beam", "beam", false);
createBaseItem("elvish_tier35_beam", "beam", true);

createBaseItem("tier35_bolt", "bolt", false);
createBaseItem("reconstructed_tier35_bolt", "bolt", true);

createBaseItem("tier35_gear", "gear", false);
createBaseItem("crushed_tier35_gear", "dust", false);
createBaseItem("enriched_crushed_tier35_gear", "dust", true);


function createMysticalItem(name as string, item as string, glowing as bool) {
	createItem(name, "mysticalagriculture:items/" + item, glowing);
}

function createBaseItem(name as string, item as string, glowing as bool) {
	createItem(name, "base:items/" + item, glowing);
}

function createItem(name as string, texture as string, glowing as bool) {
	var item = VanillaFactory.createItem(name);
	item.setTextureLocation(ResourceLocation.create(texture));
	item.setItemColorSupplier(function(stack as IItemStack, tint as int) {
		return Color.fromInt(scripts.emc_generation.item_tweaker.customItems[stack.definition.id.substring(15)]);
	});
	item.setGlowing(glowing);
	item.register();
}

function createJaopcaItem(tier as string, type as string) {
	var item = VanillaFactory.createItem(tier + "_" + type);
	item.setTextureLocation(ResourceLocation.create("jaopca:items/" + type));
	item.setItemColorSupplier(function(stack as IItemStack, tint as int) {
		val id = stack.definition.id.substring(15);
		return Color.fromInt(colorLookup[id.split("_")[0]]);
	});
	item.register();
}