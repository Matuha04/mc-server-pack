# vertical ring in the Z-Y plane (x fixed)
scoreboard players operation #px gb = #cx gb
scoreboard players operation #py gb = #cy gb
scoreboard players operation #py gb += #qy gb
scoreboard players operation #pz gb = #cz gb
scoreboard players operation #pz gb += #qx gb
function glowborder:plot_here
scoreboard players operation #pz gb = #cz gb
scoreboard players operation #pz gb -= #qx gb
function glowborder:plot_here
scoreboard players operation #py gb = #cy gb
scoreboard players operation #py gb -= #qy gb
function glowborder:plot_here
scoreboard players operation #pz gb = #cz gb
scoreboard players operation #pz gb += #qx gb
function glowborder:plot_here
scoreboard players operation #py gb = #cy gb
scoreboard players operation #py gb += #qx gb
scoreboard players operation #pz gb = #cz gb
scoreboard players operation #pz gb += #qy gb
function glowborder:plot_here
scoreboard players operation #pz gb = #cz gb
scoreboard players operation #pz gb -= #qy gb
function glowborder:plot_here
scoreboard players operation #py gb = #cy gb
scoreboard players operation #py gb -= #qx gb
function glowborder:plot_here
scoreboard players operation #pz gb = #cz gb
scoreboard players operation #pz gb += #qy gb
function glowborder:plot_here
