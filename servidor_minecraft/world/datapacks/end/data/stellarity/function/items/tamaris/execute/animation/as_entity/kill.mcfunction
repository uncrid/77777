execute facing entity @p[predicate=stellarity:items/holding/tamaris,predicate=kohara:player/is_sneaking] eyes rotated ~ 0 run function stellarity:items/tamaris/execute/animation/as_entity/facing_player

playsound stellarity:item.tamaris.execute_bg player @a[distance=0..] ~ ~1.05 ~ 1 1

playsound minecraft:entity.player.attack.sweep player @a[distance=0..] ~ ~1.05 ~ 1 0.6
playsound minecraft:entity.player.attack.crit player @a[distance=0..] ~ ~1.05 ~ 1 0.8
#playsound minecraft:entity.stray.death player @a[distance=0..] ~ ~1.05 ~ 1 0.8
playsound minecraft:entity.wither_skeleton.death player @a[distance=0..] ~ ~1.05 ~ 1 1

execute if entity @p[name="Senjuukotentaiho"] run playsound stellarity:item.tamaris.chime player @a[distance=0..] ~ ~1.05 ~ 1 1

advancement grant @p[predicate=stellarity:items/holding/tamaris,predicate=kohara:player/is_sneaking] only stellarity:dragons_den/disassembly
execute if entity @s[type=warden] run advancement grant @p[predicate=stellarity:items/holding/tamaris,predicate=kohara:player/is_sneaking] only stellarity:dragons_den/kill_la_kill

function stellarity:items/tamaris/execute/blood_for_blood
