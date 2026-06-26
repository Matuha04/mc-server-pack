# Draw a dotted glowing line between the two points in storage glowborder:seg {ax,ay,az,bx,by,bz}
execute store result score #ax gb run data get storage glowborder:seg ax
execute store result score #ay gb run data get storage glowborder:seg ay
execute store result score #az gb run data get storage glowborder:seg az
execute store result score #bx gb run data get storage glowborder:seg bx
execute store result score #by gb run data get storage glowborder:seg by
execute store result score #bz gb run data get storage glowborder:seg bz
scoreboard players operation #dx gb = #bx gb
scoreboard players operation #dx gb -= #ax gb
scoreboard players operation #dy gb = #by gb
scoreboard players operation #dy gb -= #ay gb
scoreboard players operation #dz gb = #bz gb
scoreboard players operation #dz gb -= #az gb
# |dx|,|dy|,|dz| via max(d,-d)
scoreboard players set #neg gb -1
scoreboard players operation #adx gb = #dx gb
scoreboard players operation #t gb = #dx gb
scoreboard players operation #t gb *= #neg gb
scoreboard players operation #adx gb > #t gb
scoreboard players operation #ady gb = #dy gb
scoreboard players operation #t gb = #dy gb
scoreboard players operation #t gb *= #neg gb
scoreboard players operation #ady gb > #t gb
scoreboard players operation #adz gb = #dz gb
scoreboard players operation #t gb = #dz gb
scoreboard players operation #t gb *= #neg gb
scoreboard players operation #adz gb > #t gb
# steps = max of the three (at least 1)
scoreboard players operation #steps gb = #adx gb
scoreboard players operation #steps gb > #ady gb
scoreboard players operation #steps gb > #adz gb
execute if score #steps gb matches ..0 run scoreboard players set #steps gb 1
scoreboard players set #four gb 4
scoreboard players operation #imax gb = #steps gb
scoreboard players operation #imax gb *= #four gb
scoreboard players set #i gb 0
function glowborder:line_step
