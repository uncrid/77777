execute unless entity @s[tag=stellarity.items.starless_scythe.holding] run function stellarity:items/starless_scythe/hold/start

function kohara:attack_speed/calculate_cooldown
execute unless score @s stellarity.items.starless_scythe.time_since_attack >= #attack_cooldown kohara.misc run \
	scoreboard players add @s stellarity.items.starless_scythe.time_since_attack 1

execute anchored eyes run tp @n[type=interaction,tag=stellarity.items.starless_scythe] ^ ^-0.25 ^3.25
execute as @n[type=interaction,tag=stellarity.items.starless_scythe] if data entity @s attack run function stellarity:items/starless_scythe/hold/interaction_attacked
