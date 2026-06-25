# Remove every border region
kill @e[type=block_display,tag=gb_edge]
tellraw @a ["",{"text":"[border] ","color":"green"},{"text":"all borders cleared"}]
