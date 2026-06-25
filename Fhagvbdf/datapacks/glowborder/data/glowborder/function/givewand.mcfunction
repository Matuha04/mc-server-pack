# /function glowborder:givewand  -> get the Border Wand (a spyglass: one use per click, never consumed)
give @s minecraft:spyglass[minecraft:custom_data={gbwand:1b},minecraft:item_name="Border Wand",minecraft:max_stack_size=1]
tellraw @s ["",{"text":"[border] ","color":"green"},{"text":"Border Wand given - right-click = corner 1, sneak + right-click = corner 2"}]
