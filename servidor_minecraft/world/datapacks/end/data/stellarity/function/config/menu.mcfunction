tellraw @s ["\n",{"text":"Stellarity","color":"#f100f1","bold":true}," ",{"text":"Configuration","color":"white","bold":true}]

tellraw @s [\
	"\n",\
	{"text":"Click config entries' names to edit them through the use of scoreboards!","color":"white"},\
	"\n",\
	{"text":"Set a scoreboard to ","color":"white"},\
	{"text":"1","color":"green"},\
	{"text":" to ","color":"white"},\
	{"text":"Enable","color":"green"},\
	{"text":" something, or set it to ","color":"white"},\
	{"text":"0","color":"red"},\
	{"text":" to ","color":"white"},\
	{"text":"Disable","color":"red"},\
	{"text":" it instead! ","color":"white"},\
	"\n"\
	]

function stellarity:utils/tellraw/config {title:"Join Message",description:"Whether to send a short message about Stellarity being loaded upon entering this world. Modpack developers are asked to check the 'Disable Join Message Globally' addon!",default:'{"translate":"stellarity.config.enabled","fallback":"Enabled","color":"#91FF7B"}',score:"join_message",numerical:0,suggested_value:1}

function stellarity:utils/tellraw/config {title:"Enable End Crystal Drop",description:"Makes End Crystals drop themselves on left-click instead of exploding.",default:'{"translate":"stellarity.config.enabled","fallback":"Enabled","color":"#91FF7B"}',score:"enable_end_crystal_drop",numerical:0,suggested_value:1}

function stellarity:utils/tellraw/config {title:"Enable Totem Void Saving",description:"Makes Totems of Undying save you from falling into the void by teleporting you to y270 instead of dying in it.",default:'{"translate":"stellarity.config.enabled","fallback":"Enabled","color":"#91FF7B"}',score:"enable_totem_void_saving",numerical:0,suggested_value:1}

function stellarity:utils/tellraw/config {title:"Always Generate Egg",description:"Always spawns a Dragon Egg after killing the Ender Dragon. If disabled, follows vanilla spawn rules of only 1 Egg and only the first kill.",default:'{"translate":"stellarity.config.disabled","fallback":"Disabled","color":"#FF7B7B"}',score:"always_generate_egg",numerical:0,suggested_value:0}

function stellarity:utils/tellraw/config {title:"Dragon Max Health",description:"Changes maximum health of the Ender Dragon. Max: 1024",default:'{"text":"300","color":"#EEEEEE"}',score:"dragon_health",numerical:1,suggested_value:300}

function stellarity:utils/tellraw/config {title:"Empress of Light Max Health",description:"Changes maximum health of the Empress of Light. Max: 1024",default:'{"text":"500","color":"#EEEEEE"}',score:"eol_health",numerical:1,suggested_value:500}

function stellarity:utils/tellraw/config {title:"Dragon Music Loop Delay",description:"Number of ticks Dragon's boss theme is going to loop after. Only edit if you actually have a reason to.",default:'{"text":"4230","color":"#EEEEEE"}',score:"track_loop_delay.dragon",numerical:1,suggested_value:4230}

function stellarity:utils/tellraw/config {title:"EoL Loop Delay",description:"Number of ticks Empress of Light's boss theme is going to loop after. Only edit if you actually have a reason to.",default:'{"text":"5980","color":"#EEEEEE"}',score:"track_loop_delay.eol",numerical:1,suggested_value:5980}

function stellarity:utils/tellraw/config {title:"Enable Dragon Screenshake",description:"Enables a bootleg screenshake effect during the Dragon's spawn animation. Can be nauseating to some, so feel free to disable it. It isn't the best anyway.",default:'{"translate":"stellarity.config.enabled","fallback":"Enabled","color":"#91FF7B"}',score:"enable_dragon_screenshake",numerical:0,suggested_value:1}

function stellarity:utils/tellraw/config {title:"Enable End City Creative Shock",description:"Makes Crystals in End Cities apply Creative Shock, which prevents placing and destroying blocks until all of them are destroyed. Keep in mind that End Cities are balanced around this option being enabled!",default:'{"translate":"stellarity.config.enabled","fallback":"Enabled","color":"#91FF7B"}',score:"enable_creative_shock",numerical:0,suggested_value:1}

function stellarity:utils/tellraw/config {title:"Nerf Elytra",description:"Nerfs the Elytra by making them take extra damage from boosting.",default:'{"translate":"stellarity.config.enabled","fallback":"Enabled","color":"#91FF7B"}',score:"nerf_elytra",numerical:0,suggested_value:1}

function stellarity:utils/tellraw/config {title:"Boss Status Messages",description:"Sends global messages when a Stellarity boss is summoned, killed or despawns.",default:'{"translate":"stellarity.config.enabled","fallback":"Enabled","color":"#91FF7B"}',score:"boss_status_messages",numerical:0,suggested_value:1}

tellraw @s {"text":"                                ","color":"gray","strikethrough":true,"bold":true}

playsound minecraft:block.chest.open player @s ~ ~ ~ 1 2
