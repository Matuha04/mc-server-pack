# Eraser (plain): remove the nearest marker if one is close, else the nearest walled border region
execute if entity @e[type=block_display,tag=gb_mark,distance=..6] run kill @e[type=block_display,tag=gb_mark,distance=..6,sort=nearest,limit=1]
execute if entity @e[type=block_display,tag=gb_mark,distance=..6] run tellraw @s ["",{"text":"[eraser] ","color":"red"},{"text":"marker removed"}]
execute unless entity @e[type=block_display,tag=gb_mark,distance=..6] as @e[type=marker,tag=gb_wallregion,sort=nearest,limit=1,distance=..96] at @s run function glowborder:erase_region with entity @s data
