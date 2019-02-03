#priority 800

import mods.compatskills.ArmorLock.addArmorLock;
import mods.compatskills.DamageLock.addDamageLock;
import mods.compatskills.HarvestLock.addToolLevelLock;


//Armor/damage locks

var defenseCap = <skill:reskillable:defense>.getCap();
var armorChange = 1;

for i in 1 to defenseCap {
	if (i % 4 == 0) {
		armorChange += 1;
	}
	var total = i * armorChange;
	if (total > defenseCap) {
		break;
	}
	if (total > 1) {
		addArmorLock(i, "reskillable:defense|" + total);
		//Because I make sure they have the same cap just do it here instead of redoing the math
		addDamageLock(i, "reskillable:attack|" + total);
	}
}


//Harvest levels

val toolTypes = {
	"pickaxe" : "reskillable:mining",
	"axe" : "reskillable:gathering",
	"shovel" : "reskillable:gathering"
} as string[string];

for key in toolTypes {
	var skill = toolTypes[key];
	addToolLevelLock(key, 1, skill + "|5");
	addToolLevelLock(key, 2, skill + "|10");
	addToolLevelLock(key, 3, skill + "|15");
	addToolLevelLock(key, 4, skill + "|32");
	addToolLevelLock(key, 5, skill + "|50");

	for i in 6 to 15 {
		addToolLevelLock(key, i, skill + "|" + 10 * (i + 1));
	}
}


addToolLevelLock("mattock", 1, "reskillable:gathering|5", "reskillable:farming|5");
addToolLevelLock("mattock", 2, "reskillable:gathering|10", "reskillable:farming|10");
addToolLevelLock("mattock", 3, "reskillable:gathering|15", "reskillable:farming|15");
addToolLevelLock("mattock", 4, "reskillable:gathering|32", "reskillable:farming|32");
addToolLevelLock("mattock", 5, "reskillable:gathering|50", "reskillable:farming|50");

for i in 6 to 15 {
	val level = 10 * (i + 1);
	addToolLevelLock("mattock", i, "reskillable:gathering|" + level, "reskillable:farming|" + level);
}