# /function glowborder:givewand  -> Border Wand (mode 0). Drop (Q) while holding to switch modes.
give @s minecraft:stick[minecraft:custom_data={gbwand:1b,mode:0},minecraft:item_name="Region Wand",minecraft:consumable={consume_seconds:1000000f,animation:"none"},minecraft:food={nutrition:0,saturation:0f,can_always_eat:true},minecraft:max_stack_size=1]
tellraw @s ["",{"text":"[border] ","color":"green"},{"text":"Wand given. Right-click acts, sneak+right is the 2nd action, and "},{"text":"drop (Q)","color":"yellow"},{"text":" switches mode."}]
