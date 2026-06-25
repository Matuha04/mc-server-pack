# Fires when a player uses a spyglass. Only act if it's actually the wand (custom_data).
execute unless data entity @s {SelectedItem:{components:{"minecraft:custom_data":{gbwand:1b}}}} run return fail
execute if predicate glowborder:sneaking run function glowborder:pos2
execute unless predicate glowborder:sneaking run function glowborder:pos1
