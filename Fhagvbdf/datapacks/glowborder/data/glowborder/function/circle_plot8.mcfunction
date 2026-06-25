# 8-fold symmetric points around (cx,cz) at height cy, using qx,qy
scoreboard players operation #py gb = #cy gb
scoreboard players operation #px gb = #cx gb
scoreboard players operation #px gb += #qx gb
scoreboard players operation #pz gb = #cz gb
scoreboard players operation #pz gb += #qy gb
function glowborder:plot_here
scoreboard players operation #px gb = #cx gb
scoreboard players operation #px gb -= #qx gb
function glowborder:plot_here
scoreboard players operation #pz gb = #cz gb
scoreboard players operation #pz gb -= #qy gb
function glowborder:plot_here
scoreboard players operation #px gb = #cx gb
scoreboard players operation #px gb += #qx gb
function glowborder:plot_here
scoreboard players operation #px gb = #cx gb
scoreboard players operation #px gb += #qy gb
scoreboard players operation #pz gb = #cz gb
scoreboard players operation #pz gb += #qx gb
function glowborder:plot_here
scoreboard players operation #px gb = #cx gb
scoreboard players operation #px gb -= #qy gb
function glowborder:plot_here
scoreboard players operation #pz gb = #cz gb
scoreboard players operation #pz gb -= #qx gb
function glowborder:plot_here
scoreboard players operation #px gb = #cx gb
scoreboard players operation #px gb += #qy gb
function glowborder:plot_here
