# snip modnotloaded botania

import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function info(item as IItemStack, text as string) as void {
	JEI.addInfo(item, [text]);
}

function remove(item as IItemStack) as void {
	JEI.hideItem(item);
	craftingTable.removeRecipe(item);
}
// Tweaks
craftingTable.removeRecipe(<item:botania:fel_pumpkin>);
craftingTable.addShaped("fel_pumpkin", <item:botania:fel_pumpkin>, [
	[<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>],
	[<item:minecraft:bone>, <item:minecraft:pumpkin>, <item:minecraft:rotten_flesh>],
	[<item:minecraft:air>, <item:minecraft:blaze_powder>, <item:minecraft:air>]
]);
craftingTable.addShaped("fel_pumpkin_carved", <item:botania:fel_pumpkin>, [
	[<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>],
	[<item:minecraft:bone>, <item:minecraft:carved_pumpkin>, <item:minecraft:rotten_flesh>],
	[<item:minecraft:air>, <item:minecraft:blaze_powder>, <item:minecraft:air>]
]);
craftingTable.removeRecipe(<item:botania:mana_gun>);
craftingTable.addShaped("mana_blaster", <item:botania:mana_gun>, [
	[<item:botania:redstone_spreader>, <item:botania:rune_mana>, <item:botania:life_essence>],
	[<item:minecraft:air>, <tag:items:botania:livingwood>, <item:minecraft:tnt>],
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:botania:livingwood>]
]);
craftingTable.removeRecipe(<item:botania:bifrost_perm>);
craftingTable.addShaped("bifrost_block", <item:botania:bifrost_perm> * 8, [
	[<item:botania:elf_glass>, <item:botania:elf_glass>, <item:botania:elf_glass>],
	[<item:botania:elf_glass>, <item:botania:mana_pearl>, <item:botania:elf_glass>],
	[<item:botania:elf_glass>, <item:botania:elf_glass>, <item:botania:elf_glass>]
]);

// Pre-nether rune of fire
<recipetype:botania:runic_altar>.removeRecipe(<item:botania:rune_fire>);
<recipetype:botania:runic_altar>.addRecipe("runic_altar/fire",
	<item:botania:rune_fire> * 2, 5200,
	<tag:items:forge:dusts/mana>, <tag:items:forge:ingots/manasteel>, <item:minecraft:brick>, <item:minecraft:gunpowder>, <item:minecraft:coal>
);

// No early block breaking
craftingTable.removeRecipe(<item:botania:lens_mine>);
craftingTable.addShapeless("bore_lens", <item:botania:lens_mine>, [<item:botania:lens_normal>, <item:quark:iron_rod>]);

// Encourage exploration
var removeInfusion = [
	"granite", "diorite", "andesite",

	"chorus_flower",
	"chiseled_stone_bricks",
	"coarse_dirt",
	"ice",
	"leather",
	"red_sand",

	"cod", "pufferfish", "salmon", "tropical_fish",

	"redstone", "glowstone_dust",
	"vine", "lily_pad",

	"apple", "beetroot_seeds", "carrot",
	"cocoa_beans", "melon_seeds", "potato",
	"pumpkin_seeds", "sweet_berries", "wheat_seeds",

	"allium", "azure_bluet", "blue_orchid", "cornflower", "dandelion", "lilac",
	"lily_of_the_valley", "orange_tulip", "oxeye_daisy", "peony", "pink_tulip",
	"poppy", "red_tulip", "rose_bush", "sunflower", "white_tulip",

	"grass", "dead_bush", "fern",

	"acacia_log", "birch_log", "dark_oak_log",
	"jungle_log", "oak_log", "spruce_log",
	"acacia_sapling", "birch_sapling", "dark_oak_sapling",
	"jungle_sapling", "oak_sapling", "spruce_sapling"
];

for item in removeInfusion {
	<recipetype:botania:mana_infusion>.removeRecipe(<item:minecraft:${item}>);
}

// Remove items that don't fit
var removeItems = [
	"terra_pick", "terra_axe", "terra_sword", "star_sword", "thunder_sword",
	"black_hole_talisman", "flight_tiara", "world_seed",

	"manasteel_helmet", "manasteel_chestplate", "manasteel_leggings", "manasteel_boots",
	"elementium_helmet", "elementium_chestplate", "elementium_leggings", "elementium_boots",
	"terrasteel_helmet", "terrasteel_chestplate", "terrasteel_leggings", "terrasteel_boots",

	// Content overlap
	"slime_bottle",

	// Rods
	"cobble_rod", "dirt_rod", "skydirt_rod", "water_rod", "gravity_rod",
	"tornado_rod", "terraform_rod", "missile_rod", "fire_rod", "smelt_rod",
	"divining_rod", "rainbow_rod",

	// Rings and other curios
	
	// Literally daybloom
	"aura_ring", "aura_ring_greater",

	"magnet_ring", "magnet_ring_greater",
	"water_ring", "swap_ring", "dodge_ring", "mining_ring", "pixie_ring",
	"reach_ring",

	"ice_pendant",
	"cloud_pendant", "super_cloud_pendant", "lava_pendant", "super_lava_pendant",

	"invisibility_cloak",

	"travel_belt", "super_travel_belt", "speed_up_belt", "knockback_belt",

	"diva_charm"
];

for item in removeItems {
	remove(<item:botania:${item}>);
}

// (Relics are turned off in config)
JEI.hideItem(<item:botania:dice>);
JEI.hideItem(<item:botania:thor_ring>);
JEI.hideItem(<item:botania:odin_ring>);
JEI.hideItem(<item:botania:loki_ring>);
JEI.hideItem(<item:botania:infinite_fruit>);
JEI.hideItem(<item:botania:king_key>);
JEI.hideItem(<item:botania:flugel_eye>);



# snip end
