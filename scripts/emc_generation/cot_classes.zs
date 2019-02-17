#loader contenttweaker
#priority 9990

import mods.contenttweaker.IBlockColorSupplier;
import mods.contenttweaker.IItemColorSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockState;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.BlockPos;
import mods.contenttweaker.Item;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.world.IBlockAccess;


zenClass block_info {
    val name as string;
    val color as int;
    val texture as string;
    var tool as string = "pickaxe";
    var harvestLevel as int = 5;
    var material as BlockMaterial = <blockmaterial:iron>;
    var light as int = 0;
    static itemColors as int[string] = {
    };

    zenConstructor(name as string, color as int, texture as string, tool as string, harvestLevel as int, material as BlockMaterial, light as int) {
        this.name = name;
        this.texture = texture;
        this.tool = tool;
        this.harvestLevel = harvestLevel;
        this.material = material;
        this.light = light;
        this.color = color;
    }

    zenConstructor(name as string, color as int, texture as string, tool as string, harvestLevel as int, material as BlockMaterial) {
        this.name = name;
        this.texture = texture;
        this.tool = tool;
        this.harvestLevel = harvestLevel;
        this.material = material;
        this.color = color;
    }

    zenConstructor(name as string, color as int, texture as string, light as int) {
        this.name = name;
        this.texture = texture;
        this.light = light;
        this.color = color;
    }

    zenConstructor(name as string, color as int, texture as string) {
        this.name = name;
        this.texture = texture;
        this.color = color;
    }

    function createBlock() {
        var block = VanillaFactory.createBlock(name, material);
        block.setToolClass(tool);
        block.setToolLevel(harvestLevel);
        block.setLightValue(light);

        if (!isNull(texture)) {
            block.setTextureLocation(ResourceLocation.create(texture));
        }
        if (color != -1) {
            block_info.itemColors[name] = color;

            block.setItemColorSupplier(function(stack as IItemStack, tint as int) {
                return Color.fromInt(block_info.itemColors[stack.definition.id.substring(15)]);
            });
            block.setBlockColorSupplier(function(state as BlockState, access as IBlockAccess, pos as BlockPos, tint as int) {
                return Color.fromInt(block_info.itemColors[state.block.definition.id.substring(15)]);
            });
        }

        block.register();
    }
}

zenClass item_info {
    val name as string;
    val color as int;
    val texture as string;
    var glowing as bool = false;
    static itemColors as int[string] = {
    };

    zenConstructor(name as string, color as int, texture as string, glowing as bool) {
        this.name = name;
        this.color = color;
        this.texture = texture;
        this.glowing = glowing;
    }

    zenConstructor(name as string, color as int, texture as string) {
        this.name = name;
        this.color = color;
        this.texture = texture;
    }

    function createItem() {
        var item = VanillaFactory.createItem(name);
        if (!isNull(texture)) {
            item.setTextureLocation(ResourceLocation.create(texture));
        }
        if (color != -1) {
            item_info.itemColors[name] = color;
            item.setItemColorSupplier(function(stack as IItemStack, tint as int) {
                return Color.fromInt(item_info.itemColors[stack.definition.id.substring(15)]);
            });
        }
        item.setGlowing(glowing);
        item.register();
    }
}