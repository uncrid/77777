playsound stellarity:item.tamaris.rave player @a[distance=0..] ~ ~1.05 ~ 1.6 1

effect give @s glowing
team join stellarity.rave_glow @s

schedule function stellarity:items/tamaris/execute/animation/rave_post 1s append

summon firework_rocket ~ ~1 ~ {Silent:1b,LifeTime:13,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;11743532,2437522,8073150,4312372,14602026,15435844],fade_colors:[I;11743532,2437522,8073150,4312372,14602026,15435844],has_trail:1,has_twinkle:1},{shape:"burst",colors:[I;11743532,2437522,8073150,4312372,14602026,15435844],fade_colors:[I;11743532,2437522,8073150,4312372,14602026,15435844],has_trail:1,has_twinkle:1},{shape:"burst",colors:[I;11743532,2437522,8073150,4312372,14602026,15435844],fade_colors:[I;11743532,2437522,8073150,4312372,14602026,15435844],has_trail:1,has_twinkle:1}],flight_duration:0}}}}
