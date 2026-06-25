# Runs when a player "uses" the wand (consumable stick). Refund it, then set a corner.
give @s minecraft:stick[minecraft:custom_data={gbwand:1b},minecraft:consumable={consume_seconds:0.1f,animation:"none",has_consume_particles:false},minecraft:item_name="Border Wand",minecraft:max_stack_size=1]
execute if predicate glowborder:sneaking run function glowborder:pos2
execute unless predicate glowborder:sneaking run function glowborder:pos1
