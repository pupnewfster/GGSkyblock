#modloaded compatskills reskillable

import mods.compatskills.AnimalTameLock.addTameLock;
import mods.compatskills.EntityMountLock.addMountLock;
import mods.compatskills.EntityDamageLock.addEntityLock;

addTameLock(<entity:minecraft:parrot>, "trait|compatskills:small_tamer");
addTameLock(<entity:minecraft:ocelot>, "trait|compatskills:small_tamer");
addTameLock(<entity:minecraft:wolf>, "trait|compatskills:medium_tamer");
addTameLock(<entity:minecraft:horse>, "trait|compatskills:large_tamer");


addMountLock(<entity:minecraft:boat>, "reskillable:agility|6");
addMountLock(<entity:minecraft:pig>, "reskillable:agility|12");
addMountLock(<entity:minecraft:horse>, "reskillable:agility|29");



addEntityLock(<entity:minecraft:squid>, "reskillable:attack|6");
addEntityLock(<entity:minecraft:rabbit>, "reskillable:attack|6");
addEntityLock(<entity:minecraft:parrot>, "reskillable:attack|6");
addEntityLock(<entity:minecraft:bat>, "reskillable:attack|6");
addEntityLock(<entity:minecraft:ocelot>, "reskillable:attack|9");
addEntityLock(<entity:minecraft:wolf>, "reskillable:attack|12");
addEntityLock(<entity:minecraft:mooshroom>, "reskillable:attack|14", "reskillable:farming|12");
addEntityLock(<entity:minecraft:mule>, "reskillable:attack|17");
addEntityLock(<entity:minecraft:llama>, "reskillable:attack|17");
addEntityLock(<entity:minecraft:horse>, "reskillable:attack|17");
addEntityLock(<entity:minecraft:donkey>, "reskillable:attack|17");
addEntityLock(<entity:minecraft:villager>, "reskillable:attack|31");