execute if score @s kohara.misc matches 18 run data merge entity @s {transformation:{scale:[0.4f,0.4f,0.4f]},start_interpolation:-1,interpolation_duration:2}

execute if score @s kohara.misc matches 18 run data modify entity @s item.components."minecraft:custom_model_data" set value 90001
execute if score @s kohara.misc matches 19 run data modify entity @s item.components."minecraft:custom_model_data" set value 90002
execute if score @s kohara.misc matches 20 run data modify entity @s item.components."minecraft:custom_model_data" set value 90003
execute if score @s kohara.misc matches 21 run data modify entity @s item.components."minecraft:custom_model_data" set value 90004

execute if score @s kohara.misc matches 22 run data merge entity @s {transformation:{scale:[0.001f,0.001f,0.001f]},start_interpolation:-1,interpolation_duration:7}
