# Store region bounds + face trigger coords on a marker, and spawn 4 persistent (hidden) side panels.
execute store result score #t gb run data get storage glowborder:box mnx
scoreboard players remove #t gb 8
execute store result storage glowborder:box wbx int 1 run scoreboard players get #t gb
execute store result score #t gb run data get storage glowborder:box mxx
scoreboard players remove #t gb 8
execute store result storage glowborder:box ebx int 1 run scoreboard players get #t gb
execute store result score #t gb run data get storage glowborder:box mnz
scoreboard players remove #t gb 8
execute store result storage glowborder:box nbz int 1 run scoreboard players get #t gb
execute store result score #t gb run data get storage glowborder:box mxz
scoreboard players remove #t gb 8
execute store result storage glowborder:box sbz int 1 run scoreboard players get #t gb
$data modify storage glowborder:box id set value $(id)
summon marker ~ ~ ~ {Tags:["gb_wallregion","gb_wrnew"]}
data modify entity @e[type=marker,tag=gb_wrnew,limit=1] data set from storage glowborder:box
$tag @e[type=marker,tag=gb_wrnew] add gb_wr$(id)
tag @e[type=marker,tag=gb_wrnew] remove gb_wrnew
$summon block_display ~ ~ ~ {Tags:["gb_wp","gb_wr$(id)","gb_sW"],teleport_duration:3,brightness:{block:15,sky:15},block_state:{Name:"minecraft:light_blue_stained_glass"},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}}
$summon block_display ~ ~ ~ {Tags:["gb_wp","gb_wr$(id)","gb_sE"],teleport_duration:3,brightness:{block:15,sky:15},block_state:{Name:"minecraft:light_blue_stained_glass"},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}}
$summon block_display ~ ~ ~ {Tags:["gb_wp","gb_wr$(id)","gb_sN"],teleport_duration:3,brightness:{block:15,sky:15},block_state:{Name:"minecraft:light_blue_stained_glass"},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}}
$summon block_display ~ ~ ~ {Tags:["gb_wp","gb_wr$(id)","gb_sS"],teleport_duration:3,brightness:{block:15,sky:15},block_state:{Name:"minecraft:light_blue_stained_glass"},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}}
