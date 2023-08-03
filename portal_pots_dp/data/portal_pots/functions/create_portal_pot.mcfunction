execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["portal_pot","newest"]}
data modify entity @e[tag=newest,limit=1] data.sherd_0 set from block ~ ~ ~ sherds[0]
data modify entity @e[tag=newest,limit=1] data.sherd_1 set from block ~ ~ ~ sherds[1]
data modify entity @e[tag=newest,limit=1] data.sherd_2 set from block ~ ~ ~ sherds[2]
data modify entity @e[tag=newest,limit=1] data.sherd_3 set from block ~ ~ ~ sherds[3]

# TODO: Visual indicator of some sort?

tag @e[tag=newest] remove newest
kill @s