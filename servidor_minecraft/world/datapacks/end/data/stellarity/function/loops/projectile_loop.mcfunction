execute if entity @s[tag=stellarity.spectral_bolt] run function stellarity:items/sharanga/bolt/loop

execute if entity @s[tag=stellarity.void_arrow] run function stellarity:items/call_of_the_void/arrow/loop

execute if entity @s[tag=stellarity.floral_armor.velocity] unless data entity @s inBlockState run function stellarity:items/armor/floral/arrow/trail
