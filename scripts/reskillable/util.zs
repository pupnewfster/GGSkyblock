#priority 9990

import crafttweaker.mods.ILoadedMods;
import crafttweaker.item.IItemStack;

import mods.compatskills.Requirement.addRequirement;


function lockItems(modid as string, blacklist as IItemStack[], requirements as string[]) {
    val mod = loadedMods[modid];
    if (!isNull(mod)) {
        for item in mod.items {
            if (!contains(blacklist, item)) {
                addRequirement(item.isDamageable ? item.withDamage(32767) : item, requirements);
            }
        }
    }
}

function contains(items as IItemStack[], item as IItemStack) as bool {
    for i in items {
        if (i.matches(item)) {
            return true;
        }
    }
    return false;
}