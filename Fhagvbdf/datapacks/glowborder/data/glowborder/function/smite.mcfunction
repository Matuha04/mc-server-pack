# /function glowborder:smite {target:"Name"}
# Strike lightning at the target, mark the spot, schedule the fire-clear ~0.2s later
$execute at $(target) run summon minecraft:lightning_bolt
$execute at $(target) run summon marker ~ ~ ~ {Tags:["gb_smite"]}
schedule function glowborder:smite_clear 4t
