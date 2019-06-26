import mods.compatskills.Requirement.addRequirement;
import crafttweaker.item.IItemStack;

val copper = [
    <metalchests:metal_chest>,
    <metalchests:chest_upgrade>
] as IItemStack[];

for item in copper {
    addRequirement(item, "compatskills:technology|9", "reskillable:building|6");
}


val iron = [
    <metalchests:metal_chest:1>,
    <metalchests:chest_upgrade:1>,
    <metalchests:chest_upgrade:6>
] as IItemStack[];

for item in iron {
    addRequirement(item, "compatskills:technology|22", "reskillable:building|9");
}


val silver = [
    <metalchests:metal_chest:2>,
    <metalchests:chest_upgrade:2>,
    <metalchests:chest_upgrade:7>,
    <metalchests:chest_upgrade:11>
] as IItemStack[];

for item in silver {
    addRequirement(item, "compatskills:technology|31", "reskillable:building|12");
}


val gold = [
    <metalchests:metal_chest:3>,
    <metalchests:chest_upgrade:3>,
    <metalchests:chest_upgrade:8>,
    <metalchests:chest_upgrade:12>,
    <metalchests:chest_upgrade:15>
] as IItemStack[];

for item in gold {
    addRequirement(item, "compatskills:technology|43", "reskillable:building|17");
}


val diamond = [
    <metalchests:metal_chest:4>,
    <metalchests:chest_upgrade:4>,
    <metalchests:chest_upgrade:9>,
    <metalchests:chest_upgrade:13>,
    <metalchests:chest_upgrade:16>,
    <metalchests:chest_upgrade:18>
] as IItemStack[];

for item in diamond {
    addRequirement(item, "compatskills:technology|58", "reskillable:building|23");
}


val obsidian = [
    <metalchests:metal_chest:5>,
    <metalchests:chest_upgrade:5>,
    <metalchests:chest_upgrade:10>,
    <metalchests:chest_upgrade:14>,
    <metalchests:chest_upgrade:17>,
    <metalchests:chest_upgrade:19>,
    <metalchests:chest_upgrade:20>
] as IItemStack[];

for item in obsidian {
    addRequirement(item, "compatskills:technology|58", "reskillable:building|23", "reskillable:defense|6");
}


//Hungry Chests

val copperHungry = [
    <metalchests:metal_hungry_chest>,
    <metalchests:metal_hungry_sorting_chest>
] as IItemStack[];

for item in copperHungry {
    addRequirement(item, "trait|compatskills:unlock_thaumcraft", "compatskills:technology|9", "reskillable:building|6");
}


val ironHungry = [
    <metalchests:metal_hungry_chest:1>,
    <metalchests:metal_hungry_sorting_chest:1>
] as IItemStack[];

for item in ironHungry {
    addRequirement(item, "trait|compatskills:unlock_thaumcraft", "compatskills:technology|22", "reskillable:building|9");
}


val silverHungry = [
    <metalchests:metal_hungry_chest:2>,
    <metalchests:metal_hungry_sorting_chest:2>
] as IItemStack[];

for item in silverHungry {
    addRequirement(item, "trait|compatskills:unlock_thaumcraft", "compatskills:technology|31", "reskillable:building|12");
}


val goldHungry = [
    <metalchests:metal_hungry_chest:3>,
    <metalchests:metal_hungry_sorting_chest:3>
] as IItemStack[];

for item in goldHungry {
    addRequirement(item, "trait|compatskills:unlock_thaumcraft", "compatskills:technology|43", "reskillable:building|17");
}


val diamondHungry = [
    <metalchests:metal_hungry_chest:4>,
    <metalchests:metal_hungry_sorting_chest:4>
] as IItemStack[];

for item in diamondHungry {
    addRequirement(item, "trait|compatskills:unlock_thaumcraft", "compatskills:technology|58", "reskillable:building|23");
}


val obsidianHungry = [
    <metalchests:metal_hungry_chest:5>,
    <metalchests:metal_hungry_sorting_chest:5>
] as IItemStack[];

for item in obsidianHungry {
    addRequirement(item, "trait|compatskills:unlock_thaumcraft", "compatskills:technology|58", "reskillable:building|23", "reskillable:defense|6");
}