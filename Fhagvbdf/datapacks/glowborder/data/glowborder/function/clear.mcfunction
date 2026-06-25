# /function glowborder:clear {id:2}  -> remove one region (edges + wall panels + wall marker)
$kill @e[type=block_display,tag=gb_region$(id)]
$kill @e[type=block_display,tag=gb_wr$(id)]
$kill @e[type=marker,tag=gb_wr$(id)]
$tellraw @s ["",{"text":"[border] ","color":"green"},{"text":"cleared region $(id)"}]
