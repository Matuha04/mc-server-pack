# Drop the preview and the corner markers
kill @e[type=block_display,tag=gb_preview]
kill @e[type=marker,tag=gb_pos1]
kill @e[type=marker,tag=gb_pos2]
tellraw @s ["",{"text":"[border] ","color":"red"},{"text":"preview cancelled"}]
