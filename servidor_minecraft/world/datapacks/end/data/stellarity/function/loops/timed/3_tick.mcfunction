execute as @e[type=!#kohara:invalid_targets,tag=stellarity.cooldown_tickdown] at @s run function stellarity:items/entity_cooldowns

# Shulker Armor Shulker Bullet targetting
execute as @e[type=minecraft:shulker_bullet,tag=stellarity.defensive_shulker_bullet] at @s run function stellarity:items/armor/shulker/shulker_bullets/seek
tag @a[tag=stellarity.items.shulker_armor.attacker] remove stellarity.items.shulker_armor.attacker

schedule function stellarity:loops/timed/3_tick 3t
