# Draw a horizontal ring from glowborder:circ {cx,cy,cz,r} via the midpoint algorithm
execute store result score #cx gb run data get storage glowborder:circ cx
execute store result score #cy gb run data get storage glowborder:circ cy
execute store result score #cz gb run data get storage glowborder:circ cz
execute store result score #cr gb run data get storage glowborder:circ r
execute if score #cr gb matches ..0 run return fail
scoreboard players operation #qx gb = #cr gb
scoreboard players set #qy gb 0
scoreboard players set #err gb 0
function glowborder:circle_loop
