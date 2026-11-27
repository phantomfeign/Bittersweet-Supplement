from beet import Context

WOOD_TYPES = [
    "oak", "spruce", "birch", "jungle", "acacia", "dark_oak",
    "mangrove", "cherry", "bamboo", "crimson", "warped",
]

OVERWORLD_WOOD_TYPES = [
    "oak", "spruce", "birch", "jungle", "acacia", "dark_oak",
    "mangrove", "cherry", "bamboo",
]

WOOD_SHAPES = [
    "stairs", "slab", "trapdoor", "door", "fence", "fence_gate",
]

STONE_TYPES = [
    "stone", "cobblestone", "mossy_cobblestone", "stone_brick", "mossy_stone_brick",
    "deepslate_brick", "deepslate_tile", "nether_brick", "red_nether_brick",
    "polished_blackstone_brick", "prismarine_brick", "granite", "diorite", "andesite",
    "cobbled_deepslate", "polished_granite", "polished_diorite", "polished_andesite",
    "polished_deepslate", "polished_blackstone", "blackstone", "blackstone_brick",
    "purpur", "quartz", "smooth_quartz", "prismarine", "dark_prismarine",
]

TOOL_TIERS = ["wooden", "stone", "copper", "iron", "golden", "diamond"]
TOOLS = ["spear", "sword", "pickaxe", "axe", "shovel", "hoe"]

ARMOR_TIERS = ["leather", "copper", "iron", "golden", "diamond"]
ARMOR_PIECES = ["helmet", "chestplate", "leggings", "boots"]

NETHERITE_ITEMS = [
    "horse_armor", "spear", "sword", "axe", "pickaxe", "shovel",
    "hoe", "helmet", "chestplate", "leggings", "boots",
]

FOOD_AND_BREWING = [
    "ender_eye", "glass_bottle", "suspicious_stew", "cake", "pumpkin_pie",
    "mushroom_stew", "beetroot_soup", "bread", "golden_carrot", "golden_apple",
    "cookie", "honey_bottle", "melon",
]

MISC_RECIPES = [
    "copper_torch", "conduit", "glow_item_frame", "end_rod", "comparator",
    "repeater", "firework_rocket_simple", "firework_star", "nether_brick",
    "bamboo_planks", "turtle_helmet", "lead", "crossbow", "bow",
    "fishing_rod", "arrow", "copper_chest", "spyglass", "netherite_ingot",
    "netherite_upgrade_smithing_template", "flint_and_steel", "compass",
    "shield", "shears", "enchanting_table", "lodestone", "furnace",
    "brewing_stand", "mace", "smoker",
]


def rx(items: list[str]) -> str:
    return "|".join(items)


BLOCKED_PATTERNS = [
    "^advancement/.*\\.json$",
    # bundles (regular + all 16 colors)
    "^recipe/(.*_)?bundle\\.json$",
    # wood stuff
    f"^recipe/({rx(WOOD_TYPES)})_({rx(WOOD_SHAPES)})\\.json$",
    f"^recipe/({rx(OVERWORLD_WOOD_TYPES)})_pressure_plate\\.json$",
    # stone stairs and slabs (crafting + stonecutting)
    f"^recipe/({rx(STONE_TYPES)})_(stairs|slab)(_from_.*_stonecutting)?\\.json$",
    # tools, armor, and netherite smithing
    f"^recipe/({rx(TOOL_TIERS)})_({rx(TOOLS)})\\.json$",
    f"^recipe/({rx(ARMOR_TIERS)})_({rx(ARMOR_PIECES)})\\.json$",
    f"^recipe/netherite_({rx(NETHERITE_ITEMS)})_smithing\\.json$",
    # cooking and smelting
    "^recipe/(cooked_.*|baked_potato|dried_kelp)(_from_(smoking|campfire_cooking))?\\.json$",
    "^recipe/quartz(_from_blasting)?\\.json$",
    "^recipe/(iron|gold)_ingot_from_smelting_raw_(iron|gold)\\.json$",
    # food, brewing, and random misc recipes
    f"^recipe/({rx(FOOD_AND_BREWING)})\\.json$",
    "^recipe/rabbit_stew_from_(brown|red)_mushroom\\.json$",
    "^recipe/(powered_|activator_|detector_)?rail\\.json$",
    "^recipe/mossy_(cobblestone|stone_bricks)_from_moss_block\\.json$",
    "^recipe/(copper|iron)_chain\\.json$",
    f"^recipe/({rx(MISC_RECIPES)})\\.json$",
]


def beet_default(ctx: Context):
    ctx.data.mcmeta.data["filter"] = {
        "block": [
            {"namespace": "minecraft", "path": pattern}
            for pattern in BLOCKED_PATTERNS
        ]
    }
