# Cooldowns
execute if entity @s[scores={stellarity.items.spellbook.conveyance.cooldown=0..}] run function stellarity:items/spellbooks/conveyance/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.updraft.cooldown=0..}] run function stellarity:items/spellbooks/updraft/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.light.cooldown=0..}] run function stellarity:items/spellbooks/light/cooldown_countdown
#execute if entity @s[scores={stellarity.items.spellbook.natures_wrath.cooldown.wolves=0..}] run function stellarity:items/spellbooks/natures_wrath/cooldown_countdown/wolves
execute if entity @s[scores={stellarity.items.spellbook.jinx.cooldown=0..}] run function stellarity:items/spellbooks/jinx/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.return.cooldown=0..}] run function stellarity:items/spellbooks/return/cooldown_countdown

execute if entity @s[scores={stellarity.items.aery_sword.cryonics.cooldown=0..}] run scoreboard players remove @s stellarity.items.aery_sword.cryonics.cooldown 1

execute if entity @s[tag=stellarity.flesh_piglin.aggro_target] run function stellarity:mobs/flesh_piglin/set_follow_range_1s_loop

scoreboard players reset @s stellarity.misc.loop.1s

scoreboard players add @s stellarity.misc.loop.10s 1
execute if entity @s[scores={stellarity.misc.loop.10s=10..}] run function stellarity:loops/player/main_10s
