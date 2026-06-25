# Macro: W/E side. Show+follow nearest player near this face; else hide.
$execute as @a[x=$(bx),dx=16,y=$(by),dy=$(dy),z=$(bz),dz=$(dz),limit=1,sort=nearest] at @s positioned $(fc) ~ ~ run function glowborder:show_x {id:"$(id)",st:"$(st)"}
$execute unless entity @a[x=$(bx),dx=16,y=$(by),dy=$(dy),z=$(bz),dz=$(dz)] run function glowborder:hide_panel {id:"$(id)",st:"$(st)"}
