advancement revoke @s only stellarity:events/items/crest/attack

attribute @s generic.attack_damage modifier remove stellarity:crest

title @s actionbar " "

execute at @s anchored eyes positioned ^ ^ ^2 run function stellarity:items/crest_of_the_end/sfx/choose

scoreboard players reset @s stellarity.items.crest.bonus_dmg
scoreboard players reset @s stellarity.items.crest.time
