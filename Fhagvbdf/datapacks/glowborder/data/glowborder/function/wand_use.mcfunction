# Reward function from the wand advancement. Re-arm the advancement, gate with a short
# cooldown so holding the click can't repeat, then set a corner based on sneak.
advancement revoke @s only glowborder:wand
execute if score @s gbCd matches 1.. run return fail
scoreboard players set @s gbCd 5
execute if predicate glowborder:sneaking run function glowborder:pos2
execute unless predicate glowborder:sneaking run function glowborder:pos1
