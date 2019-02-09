#loader contenttweaker

import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Item;

//Pebble

var pebble = VanillaFactory.createItem("pebble");
pebble.setTextureLocation(ResourceLocation.create("botania:items/pebble"));
pebble.register();


//Sea lanterns

var customLanterns = ["white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"] as string[];


for name in customLanterns {
    var block = VanillaFactory.createBlock(name + "_sea_lantern", <blockmaterial:glass>);
    block.setBlockHardness(0.3);
    block.setLightValue(1);
    block.setTextureLocation(ResourceLocation.create("contenttweaker:blocks/sea_lanterns/" + name));
    block.register();
}