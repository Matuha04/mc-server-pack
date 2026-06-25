# Strike lightning at the target and mark the spot for a delayed fire-clear
$execute at $(target) run summon minecraft:lightning_bolt
$execute at $(target) run summon marker ~ ~ ~ {Tags:["gb_smite"]}
