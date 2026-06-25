# /function glowborder:clear {id:2}  -> remove one numbered region (edges + its wall data)
$kill @e[type=block_display,tag=gb_region$(id)]
$kill @e[type=marker,tag=gb_wr$(id)]
$tellraw @s ["",{"text":"[border] ","color":"green"},{"text":"cleared region $(id)"}]
