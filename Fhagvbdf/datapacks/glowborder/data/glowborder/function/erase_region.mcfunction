# Macro: remove a whole region (edges + wall panels + wall marker)
$kill @e[type=block_display,tag=gb_region$(id)]
$kill @e[type=block_display,tag=gb_wr$(id)]
$kill @e[type=marker,tag=gb_wr$(id)]
tellraw @a ["",{"text":"[eraser] ","color":"red"},{"text":"region removed"}]
