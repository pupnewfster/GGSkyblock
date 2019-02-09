#priority 9990

import crafttweaker.mods.ILoadedMods;
import crafttweaker.item.IItemStack;

import mods.compatskills.Requirement.addRequirement;


//TODO: Support addedRequirements having an IItemStack with wildcard meta
//TODO: Add support for nbt in addedRequirements. Done?
function lockItems(modid as string, blacklist as IItemStack[], requirements as string[], addedRequirements as string[][IItemStack]) {
    val mod = loadedMods[modid];
    if (!isNull(mod)) {
        for item in mod.items {
            var cleanItem = itemUtils.getItem(item.definition.id, item.metadata);
            if (item.hasTag && item.tag.length > 0) {
                cleanItem = cleanItem.withTag(item.tag);
            }
            //TODO: Lock base items even if this item has NBT
            if (!contains(blacklist, cleanItem)) {
                print("Null second for item: " + isNull(addedRequirements[cleanItem]) + " " + item.definition.id);
                addRequirement(cleanItem.isDamageable ? cleanItem.withDamage(32767) : cleanItem, combine(requirements, addedRequirements[cleanItem]));
            } else {
                val reqs = addedRequirements[cleanItem];
                if (!isNull(reqs)) {
                    addRequirement(cleanItem.isDamageable ? cleanItem.withDamage(32767) : cleanItem, reqs);
                }
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

//TODO: Make the one from loot_tweaker just call this
function combine(first as string[], second as string[]) as string[] {
    if (isNull(second) || second.length == 0) {
        return first;
    }
    var array as string[] = first;
    for s in second {
        array += s;
    }
    return array;
}