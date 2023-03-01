execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["portal_pot","newest"]}
data modify entity @e[tag=newest,limit=1] data.shard_0 set from block ~ ~ ~ shards[0]
data modify entity @e[tag=newest,limit=1] data.shard_1 set from block ~ ~ ~ shards[1]
data modify entity @e[tag=newest,limit=1] data.shard_2 set from block ~ ~ ~ shards[2]
data modify entity @e[tag=newest,limit=1] data.shard_3 set from block ~ ~ ~ shards[3]

# Set the collar to make it easy to tell which pots are linked
execute if entity @e[tag=newest,nbt={data:{shard_0:"minecraft:pottery_shard_archer"}}] run function portal_pots:summon/archer_0
execute if entity @e[tag=newest,nbt={data:{shard_0:"minecraft:pottery_shard_arms_up"}}] run function portal_pots:summon/arms_up_0
execute if entity @e[tag=newest,nbt={data:{shard_0:"minecraft:pottery_shard_prize"}}] run function portal_pots:summon/prize_0
execute if entity @e[tag=newest,nbt={data:{shard_0:"minecraft:pottery_shard_skull"}}] run function portal_pots:summon/skull_0

execute if entity @e[tag=newest,nbt={data:{shard_1:"minecraft:pottery_shard_archer"}}] run function portal_pots:summon/archer_1
execute if entity @e[tag=newest,nbt={data:{shard_1:"minecraft:pottery_shard_arms_up"}}] run function portal_pots:summon/arms_up_1
execute if entity @e[tag=newest,nbt={data:{shard_1:"minecraft:pottery_shard_prize"}}] run function portal_pots:summon/prize_1
execute if entity @e[tag=newest,nbt={data:{shard_1:"minecraft:pottery_shard_skull"}}] run function portal_pots:summon/skull_1

execute if entity @e[tag=newest,nbt={data:{shard_2:"minecraft:pottery_shard_archer"}}] run function portal_pots:summon/archer_2
execute if entity @e[tag=newest,nbt={data:{shard_2:"minecraft:pottery_shard_arms_up"}}] run function portal_pots:summon/arms_up_2
execute if entity @e[tag=newest,nbt={data:{shard_2:"minecraft:pottery_shard_prize"}}] run function portal_pots:summon/prize_2
execute if entity @e[tag=newest,nbt={data:{shard_2:"minecraft:pottery_shard_skull"}}] run function portal_pots:summon/skull_2

execute if entity @e[tag=newest,nbt={data:{shard_3:"minecraft:pottery_shard_archer"}}] run function portal_pots:summon/archer_3
execute if entity @e[tag=newest,nbt={data:{shard_3:"minecraft:pottery_shard_arms_up"}}] run function portal_pots:summon/arms_up_3
execute if entity @e[tag=newest,nbt={data:{shard_3:"minecraft:pottery_shard_prize"}}] run function portal_pots:summon/prize_3
execute if entity @e[tag=newest,nbt={data:{shard_3:"minecraft:pottery_shard_skull"}}] run function portal_pots:summon/skull_3

tag @e[tag=newest] remove newest
kill @s