#loader contenttweaker

import scripts.emc_generation.cot_lookup.colorLookup;

import mods.contenttweaker.IItemColorSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;


static compressedItemMap as int[string] = {
    compressed_tier1 : colorLookup.tier1,
    compressed_sugar : -1,
	compressed_lp : colorLookup.blood
} as int[string];

for name in compressedItemMap {
	var compressedItem = VanillaFactory.createItem(name);
	compressedItem.setTextureLocation(ResourceLocation.create("contenttweaker:items/infuser_compressed"));
	compressedItem.setItemColorSupplier(function(stack as IItemStack, tint as int) {
		return Color.fromInt(scripts.emc_generation.compressed_items.compressedItemMap[stack.definition.id.substring(15)]);
	});
	compressedItem.register();
}