# Remove every border region (edges + walls)
kill @e[type=block_display,tag=gb_edge]
kill @e[type=block_display,tag=gb_wall]
kill @e[type=block_display,tag=gb_wp]
kill @e[type=marker,tag=gb_wallregion]
tellraw @a ["",{"text":"[border] ","color":"green"},{"text":"all borders cleared"}]
