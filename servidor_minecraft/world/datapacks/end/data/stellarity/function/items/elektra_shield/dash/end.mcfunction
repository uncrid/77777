tag @s remove stellarity.items.elektra_shield.using
scoreboard players reset @s stellarity.items.elektra_shield.animation

effect clear @s minecraft:resistance
effect clear @s minecraft:levitation

attribute @s generic.knockback_resistance modifier remove stellarity:elektra_shield
attribute @s generic.gravity modifier remove stellarity:elektra_shield

kill @n[type=marker,tag=stellarity.items.elektra_shield.marker]
execute if score @s stellarity.items.elektra_shield.zap_count matches 5.. run advancement grant @s only stellarity:adventure/electrified
scoreboard players reset @s stellarity.items.elektra_shield.zap_count

#tp @s ~ ~-0.01 ~
