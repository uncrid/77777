advancement revoke @s only stellarity:events/items/use_elektra_shield_while_sneaking

tag @s add stellarity.items.elektra_shield.using

# Will get removed literally a tick later
effect give @s levitation infinite 0 true

# Immunity to knockback
attribute @s generic.knockback_resistance modifier add stellarity:elektra_shield 1000 add_value
attribute @s generic.gravity modifier add stellarity:elektra_shield -1 add_multiplied_total

function stellarity:items/elektra_shield/dash/spawn_marker

execute unless score @s stellarity.items.elektra_shield.dashes matches -2147483648..2147483647 run scoreboard players set @s stellarity.items.elektra_shield.dashes 3
scoreboard players remove @s stellarity.items.elektra_shield.dashes 1
function stellarity:items/elektra_shield/actionbar
