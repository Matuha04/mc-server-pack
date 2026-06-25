# /function glowborder:clear {id:2}  -> remove one numbered region
$kill @e[type=block_display,tag=gb_region$(id)]
$tellraw @s ["",{"text":"[border] ","color":"green"},{"text":"cleared region $(id)"}]
