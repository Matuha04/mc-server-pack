# /function glowborder:givewand  -> Border Wand: a stick that triggers on right-click but is never eaten
give @s minecraft:stick[minecraft:custom_data={gbwand:1b},minecraft:item_name="Border Wand",minecraft:consumable={consume_seconds:1000000f,animation:"none"},minecraft:food={nutrition:0,saturation:0f,can_always_eat:true},minecraft:max_stack_size=1]
tellraw @s ["",{"text":"[border] ","color":"green"},{"text":"Border Wand given - right-click = corner 1, sneak + right-click = corner 2"}]
