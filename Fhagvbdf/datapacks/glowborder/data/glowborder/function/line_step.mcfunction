# place a cube at A + d*i/steps, then advance i
scoreboard players operation #px gb = #dx gb
scoreboard players operation #px gb *= #i gb
scoreboard players operation #px gb /= #steps gb
scoreboard players operation #px gb += #ax gb
scoreboard players operation #py gb = #dy gb
scoreboard players operation #py gb *= #i gb
scoreboard players operation #py gb /= #steps gb
scoreboard players operation #py gb += #ay gb
scoreboard players operation #pz gb = #dz gb
scoreboard players operation #pz gb *= #i gb
scoreboard players operation #pz gb /= #steps gb
scoreboard players operation #pz gb += #az gb
execute store result storage glowborder:pt x int 1 run scoreboard players get #px gb
execute store result storage glowborder:pt y int 1 run scoreboard players get #py gb
execute store result storage glowborder:pt z int 1 run scoreboard players get #pz gb
function glowborder:put_cube with storage glowborder:pt
scoreboard players add #i gb 1
execute if score #i gb <= #steps gb run function glowborder:line_step
