data modify storage stellarity:temp aery_sword.custom_data set from storage stellarity:temp aery_sword.item."minecraft:custom_data"

data modify storage stellarity:temp aery_sword.custom_data."stellarity.aery_sword".abilities append value "cryonics"

tellraw @s {"translate":"stellarity.items.weapons.frigid_harvester.ability.tellraw.1","fallback":"--------< %1$s - %2$s >--------","color":"gray","with":[{"translate":"stellarity.items.weapons.frigid_harvester.ability.tellraw.2","fallback":"ABILITY UNLOCK","bold":true,"color":"#EEEEEE"},{"translate":"stellarity.items.weapons.frigid_harvester.ability.cryonics","fallback":"Cryonics","color":"#4BC6FF"}]}
tellraw @s " "
tellraw @s {"translate":"stellarity.items.weapons.frigid_harvester.ability.cryonics.description","fallback":"Using a Totem of Undying encases you in protective ice, making you invulnerable and providing extreme healing","color":"#EEEEEE"}
tellraw @s " "

execute if score #damage_rounded stellarity.misc matches 12 anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/frigid_harvester/effects/ability_absorb

function stellarity:items/frigid_harvester/abilities/unlock/update
