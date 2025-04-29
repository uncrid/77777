attribute @s minecraft:generic.attack_damage modifier add stellarity:mob_stat 0.16 add_multiplied_base
attribute @s minecraft:generic.max_health modifier add stellarity:mob_stat 4 add_value
attribute @s minecraft:generic.armor modifier add stellarity:mob_stat 4 add_value
attribute @s minecraft:generic.armor_toughness modifier add stellarity:mob_stat 1 add_value
attribute @s minecraft:generic.knockback_resistance modifier add stellarity:mob_stat 0.15 add_value
attribute @s minecraft:generic.movement_speed modifier add stellarity:mob_stat 0.1 add_multiplied_base

execute store result score #random stellarity.misc run random value 1..3
execute if score #random stellarity.misc matches 1..2 run loot replace entity @s[tag=!stellarity.end_city] weapon loot stellarity:items/call_of_the_void
execute if score #random stellarity.misc matches 3 run item replace entity @s[tag=!stellarity.end_city] weapon with stone_sword[custom_model_data=90000]
data merge entity @s {DeathLootTable:"stellarity:mobs/voided_skeleton",HandDropChances:[0.004f,0f]}
effect give @s instant_damage 1 23 true

execute at @s[tag=!stellarity.end_city] if biome ~ ~ ~ #stellarity:snowy run function stellarity:mobs/voided_skeleton/frozen_spikes

tag @s[tag=!stellarity.buffed] add stellarity.buffed
tag @s add stellarity.voided_skeleton
