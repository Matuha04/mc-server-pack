# /function glowborder:givewand  -> get the Border Wand
give @s minecraft:stick[minecraft:custom_data={gbwand:1b},minecraft:consumable={consume_seconds:0.1f,animation:"none",has_consume_particles:false},minecraft:item_name="Border Wand",minecraft:max_stack_size=1]
tellraw @s ["",{"text":"[border] ","color":"green"},{"text":"Border Wand given - right-click = corner 1, sneak + right-click = corner 2"}]
