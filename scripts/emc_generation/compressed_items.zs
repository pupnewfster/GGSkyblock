#loader contenttweaker

import scripts.emc_generation.cot_lookup.colorLookup;
import scripts.emc_generation.cot_classes.item_info;

val compressedItemMap as int[string] = {
    tier1 : colorLookup.tier1,
    sugar : -1,
    lp : colorLookup.blood,
    tier22 : colorLookup.tier22,
    tier30 : colorLookup.tier30
} as int[string];

for name, color in compressedItemMap {
    item_info("compressed_" + name, color as int, "contenttweaker:items/infuser_compressed").createItem();
}