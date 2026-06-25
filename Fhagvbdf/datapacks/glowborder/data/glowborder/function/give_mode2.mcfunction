# give the nearby dropper a Ruler-mode wand
give @p[distance=..5] minecraft:stick[minecraft:custom_data={gbwand:1b,mode:2},minecraft:item_name="Region Wand",minecraft:consumable={consume_seconds:1000000f,animation:"none"},minecraft:food={nutrition:0,saturation:0f,can_always_eat:true},minecraft:max_stack_size=1]
title @p[distance=..5] actionbar ["",{"text":"Wand: ","color":"gray"},{"text":"Ruler","color":"light_purple"}]
