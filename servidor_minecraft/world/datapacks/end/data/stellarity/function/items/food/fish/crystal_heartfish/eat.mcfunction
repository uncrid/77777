advancement revoke @s only stellarity:events/items/food/fish/consume_crystal_heartfish

scoreboard players add @s stellarity.items.fish.crystal_heartfish.total_consumed 1
function stellarity:items/food/fish/crystal_heartfish/increase_max_hp

execute if score @s stellarity.items.fish.crystal_heartfish.total_consumed matches 10 run advancement grant @s only stellarity:void_fishing/topped_off

summon area_effect_cloud ~ ~ ~ {Tags:["stellarity.items.fish.crystal_heartfish.aec","stellarity.aec"],Duration:21}

particle minecraft:dust_color_transition{from_color: [1.0, 0.51, 0.878], scale: 1.0, to_color: [1.0, 0.0, 0.0]} ~ ~1 ~ .3 .55 .3 0 30 normal
particle firework ~ ~1 ~ .3 .55 .3 0 20 normal

playsound minecraft:entity.evoker.cast_spell player @a[distance=0..] ~ ~ ~ 1 1.4
