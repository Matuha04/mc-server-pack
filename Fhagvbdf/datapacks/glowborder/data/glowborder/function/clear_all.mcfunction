# Remove every border region (edges + walls)
kill @e[type=block_display,tag=gb_edge]
kill @e[type=block_display,tag=gb_wall]
tellraw @a ["",{"text":"[border] ","color":"green"},{"text":"all borders cleared"}]
