# Store a marker holding this region's bounds + the 4 face trigger coords (face-8),
# so the tick loop can reveal walls near players. Reads glowborder:box, $(id) from caller.
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
summon marker ~ ~ ~ {Tags:["gb_wallregion","gb_wrnew"]}
data modify entity @e[type=marker,tag=gb_wrnew,limit=1] data set from storage glowborder:box
$tag @e[type=marker,tag=gb_wrnew] add gb_wr$(id)
tag @e[type=marker,tag=gb_wrnew] remove gb_wrnew
