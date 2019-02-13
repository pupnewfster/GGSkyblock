import mods.compatskills.Requirement.addRequirement;
import crafttweaker.item.IItemStack;

val blacklist as IItemStack[] = [
    <actuallyadditions:item_coffee>,
    <actuallyadditions:item_food:*>,
    <actuallyadditions:item_rice_seed>,
    <actuallyadditions:block_rice>,
    <actuallyadditions:item_jam:*>,
    <actuallyadditions:block_testifi_bucks_green_wall>,
    <actuallyadditions:block_testifi_bucks_white_wall>
];


val addedRequirements as string[][IItemStack] = {
    <actuallyadditions:block_laser_relay> : ["trait|compatskills:wireless"],
    <actuallyadditions:block_laser_relay_advanced> : ["trait|compatskills:wireless"],
    <actuallyadditions:block_laser_relay_extreme> : ["trait|compatskills:wireless"],
    <actuallyadditions:block_laser_relay_fluids> : ["trait|compatskills:wireless"],
    <actuallyadditions:block_laser_relay_item> : ["trait|compatskills:wireless"],
    <actuallyadditions:block_laser_relay_item_whitelist> : ["trait|compatskills:wireless"],
    <actuallyadditions:block_ranged_collector> : ["trait|compatskills:wireless"],
    <actuallyadditions:block_phantomface> : ["trait|compatskills:wireless"],
    <actuallyadditions:block_phantom_liquiface> : ["trait|compatskills:wireless"],
    <actuallyadditions:block_phantom_energyface> : ["trait|compatskills:wireless"],
    <actuallyadditions:block_phantom_redstoneface> : ["trait|compatskills:wireless"],
    <actuallyadditions:block_phantom_booster> : ["trait|compatskills:wireless"],
    <actuallyadditions:block_player_interface> : ["trait|compatskills:wireless"],

    <actuallyadditions:item_spawner_changer> : ["reskillable:magic|39", "reskillable:building|16", "compatskills:taming|47"],

    <actuallyadditions:block_bio_reactor> : ["reskillable:farming|21"],
    <actuallyadditions:block_shock_suppressor> : ["reskillable:defense|21", "reskillable:building|17"],
    <actuallyadditions:block_feeder> : ["reskillable:farming|21"],
    <actuallyadditions:block_compost> : ["reskillable:farming|21"],
    <actuallyadditions:block_greenhouse_glass> : ["reskillable:farming|65"],
    <actuallyadditions:block_leaf_generator> : ["reskillable:farming|23"],
    <actuallyadditions:block_oil_generator> : ["compatskills:technology|24"],
    <actuallyadditions:block_lava_factory_controller> : ["compatskills:technology|43", "compatskills:smithing|12"],

    <actuallyadditions:block_atomic_reconstructor> : ["reskillable:magic|7"],
    <actuallyaddon:advanced_reconstructor> : ["reskillable:magic|14", "compatskills:technology|31"],
    <actuallyadditions:block_item_repairer> : ["compatskills:smithing|63", "compatskills:technology|31"],

    <actuallyadditions:block_empowerer> : ["compatskills:technology|25", "reskillable:agility|5"],

    <actuallyadditions:item_fertilizer> : ["reskillable:farming|25"],

    <actuallyadditions:block_farmer> : ["reskillable:farming|25"],

    <actuallyadditions:item_color_lens> : ["reskillable:magic|67", "compatskills:technology|62"]
};


scripts.reskillable.util.lockItems("actuallyadditions", blacklist, ["compatskills:technology|17"], addedRequirements);