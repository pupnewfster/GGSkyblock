#priority 1500
import crafttweaker.item.IItemStack;

zenClass loot_info {
    val weight as int;
    val requirements as string[];
    val item as IItemStack;

    zenConstructor(item as IItemStack, weight as int, requirements as string[]) {
        this.item = item;
        this.weight = weight;
        this.requirements = requirements;
    }

    zenConstructor(item as IItemStack, weight as int) {
        this.item = item;
        this.weight = weight;
    }
}