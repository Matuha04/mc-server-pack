# Macro (per region marker): drive each side's persistent panel.
$function glowborder:side_x {id:"$(id)",st:"gb_sW",fc:"$(mnx)",bx:"$(wbx)",by:"$(mny)",bz:"$(mnz)",dy:"$(ly)",dz:"$(lz)"}
$function glowborder:side_x {id:"$(id)",st:"gb_sE",fc:"$(mxx)",bx:"$(ebx)",by:"$(mny)",bz:"$(mnz)",dy:"$(ly)",dz:"$(lz)"}
$function glowborder:side_z {id:"$(id)",st:"gb_sN",fc:"$(mnz)",bx:"$(mnx)",by:"$(mny)",bz:"$(nbz)",dx:"$(lx)",dy:"$(ly)"}
$function glowborder:side_z {id:"$(id)",st:"gb_sS",fc:"$(mxz)",bx:"$(mnx)",by:"$(mny)",bz:"$(sbz)",dx:"$(lx)",dy:"$(ly)"}
