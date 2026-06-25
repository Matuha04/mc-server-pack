# remove the nearest waypoint pillar within 6 blocks
execute at @s run kill @e[type=block_display,tag=gb_mark,distance=..6,sort=nearest,limit=1]
tellraw @s ["",{"text":"[marker] ","color":"gold"},{"text":"nearest removed"}]
