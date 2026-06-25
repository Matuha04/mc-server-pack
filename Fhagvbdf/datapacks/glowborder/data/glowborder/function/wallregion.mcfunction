# Macro (per region marker): for players near each of the 4 vertical sides, spawn a window panel.
$execute as @a[x=$(wbx),dx=16,y=$(mny),dy=$(ly),z=$(mnz),dz=$(lz)] at @s run function glowborder:panel_x {fx:"$(mnx)"}
$execute as @a[x=$(ebx),dx=16,y=$(mny),dy=$(ly),z=$(mnz),dz=$(lz)] at @s run function glowborder:panel_x {fx:"$(mxx)"}
$execute as @a[x=$(mnx),dx=$(lx),y=$(mny),dy=$(ly),z=$(nbz),dz=16] at @s run function glowborder:panel_z {fz:"$(mnz)"}
$execute as @a[x=$(mnx),dx=$(lx),y=$(mny),dy=$(ly),z=$(sbz),dz=16] at @s run function glowborder:panel_z {fz:"$(mxz)"}
