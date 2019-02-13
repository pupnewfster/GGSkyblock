#priority 9990

import crafttweaker.mods.ILoadedMods;
import crafttweaker.item.IItemStack;

import mods.compatskills.Requirement.addRequirement;


//TODO: See what mekanism outputs nbt wise and if this type of system even has a chance of working with it without being overly convoluted

//Does not handle items in blacklist with NBT
function lockItems(modid as string, blacklist as IItemStack[], requirements as string[], addedRequirements as string[][IItemStack]) {
    val items as IItemStack[] = getModItems(modid);
    if (items.length > 0) {
        //Normalize the given blacklist as NBT is not supported so replace any instances of
        val filteredBlacklist as IItemStack[] = normalizeBlacklist(blacklist);
        var itemHits as IItemStack[] = [];

        for item in items {
            val reqs = addedRequirements[item];
            val usedItem = item.isDamageable ? item.withDamage(32767) : item;
            if (!contains(filteredBlacklist, item)) {
                addRequirement(item.isDamageable ? item.withDamage(32767) : item, combine(requirements, reqs));
            } else if (!isNull(reqs)) {
                addRequirement(item.isDamageable ? item.withDamage(32767) : item, reqs);
            }
            itemHits += usedItem;
        }
        for item, reqs in addedRequirements {
            if (!contains(itemHits, item)) {
                addRequirement(item, combine(requirements, reqs));
            }
        }
    }
}

function getModItems(modid as string) as IItemStack[] {
    val mod = loadedMods[modid];
    var items as IItemStack[] = [];
    if (!isNull(mod)) {
        for item in mod.items {
            var cleanItem = itemUtils.getItem(item.definition.id, item.metadata);
            if (cleanItem.hasTag) {
                cleanItem = cleanItem.withEmptyTag();
            }
            if (!contains(items, cleanItem)) {
                items += cleanItem;
            }
        }
    }
    return items;
}

function normalizeBlacklist(blacklist as IItemStack[]) as IItemStack[] {
    var filteredBlacklist as IItemStack[] = [];
    for item in blacklist {
        if (!contains(filteredBlacklist, item)) {
            filteredBlacklist += (item.hasTag ? item.withEmptyTag() : item);
        }
    }
    return filteredBlacklist;
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