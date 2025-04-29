execute as @n[scores={stellarity.enchantments.critical_strike.can_crit=1}] run function stellarity:mechanics/enchantments/crit_strike/post_critical_hit

execute positioned ~ ~0.7 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,item:magenta_dye,despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,custommodeldata:90007,id:crit_small}
execute positioned ~ ~0.7 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,item:magenta_dye,despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,custommodeldata:90007,id:crit_small}
execute positioned ~ ~0.7 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,item:magenta_dye,despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,custommodeldata:90007,id:crit_small}
execute positioned ~ ~0.7 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,item:magenta_dye,despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,custommodeldata:90007,id:crit_small}

execute positioned ~ ~1 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,item:magenta_dye,despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,custommodeldata:90007,id:crit_small}
execute positioned ~ ~1 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,item:magenta_dye,despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,custommodeldata:90007,id:crit_small}
execute positioned ~ ~1 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,item:magenta_dye,despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,custommodeldata:90007,id:crit_small}
execute positioned ~ ~1 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,item:magenta_dye,despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,custommodeldata:90007,id:crit_small}

execute positioned ~ ~1.3 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,item:magenta_dye,despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,custommodeldata:90007,id:crit_small}
execute positioned ~ ~1.3 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,item:magenta_dye,despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,custommodeldata:90007,id:crit_small}
execute positioned ~ ~1.3 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,item:magenta_dye,despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,custommodeldata:90007,id:crit_small}
execute positioned ~ ~1.3 ~ run function kohara:particles/spawn_particle {speed:10,billboard:center,item:magenta_dye,despawn_value:30,state:spread,spread_initial:1.3,spread_radius:2.5,custommodeldata:90007,id:crit_small}

execute positioned ~ ~1.3 ~ run function kohara:particles/spawn_particle {speed:0,billboard:center,item:magenta_dye,despawn_value:80,state:spread,spread_initial:0,spread_radius:0,custommodeldata:90006,id:crit}

playsound stellarity:enchantment.critical_strike.crit neutral @a[distance=0..] ~ ~ ~ 1 1
