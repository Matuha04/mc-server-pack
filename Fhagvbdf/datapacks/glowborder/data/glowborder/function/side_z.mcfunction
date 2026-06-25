# Macro: N/S side. Show+follow nearest player near this face; else hide.
$execute as @a[x=$(bx),dx=$(dx),y=$(by),dy=$(dy),z=$(bz),dz=16,limit=1,sort=nearest] at @s positioned ~ ~ $(fc) run function glowborder:show_z {id:"$(id)",st:"$(st)"}
$execute unless entity @a[x=$(bx),dx=$(dx),y=$(by),dy=$(dy),z=$(bz),dz=16] run function glowborder:hide_panel {id:"$(id)",st:"$(st)"}
