execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["portal_pot","newest"]}
data modify entity @e[tag=newest,limit=1] data.shard_0 set from block ~ ~ ~ shards[0]
data modify entity @e[tag=newest,limit=1] data.shard_1 set from block ~ ~ ~ shards[1]
data modify entity @e[tag=newest,limit=1] data.shard_2 set from block ~ ~ ~ shards[2]
data modify entity @e[tag=newest,limit=1] data.shard_3 set from block ~ ~ ~ shards[3]

# Set the collar to make it easy to tell which pots are linked
execute if entity @e[tag=newest,nbt={data:{shard_0:"minecraft:pottery_shard_archer"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:red_terracotta"},transformation:{scale:[0.4f,1.0f,0.4f],translation:[0.3f,0.245f,0.3f]},Tags:["portal_pot"]}
execute if entity @e[tag=newest,nbt={data:{shard_0:"minecraft:pottery_shard_arms_up"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:light_blue_terracotta"},transformation:{scale:[0.4f,1.0f,0.4f],translation:[0.3f,0.245f,0.3f]},Tags:["portal_pot"]}
execute if entity @e[tag=newest,nbt={data:{shard_0:"minecraft:pottery_shard_prize"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:lime_terracotta"},transformation:{scale:[0.4f,1.0f,0.4f],translation:[0.3f,0.245f,0.3f]},Tags:["portal_pot"]}
execute if entity @e[tag=newest,nbt={data:{shard_0:"minecraft:pottery_shard_skull"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:yellow_terracotta"},transformation:{scale:[0.4f,1.0f,0.4f],translation:[0.3f,0.245f,0.3f]},Tags:["portal_pot"]}

execute if entity @e[tag=newest,nbt={data:{shard_1:"minecraft:pottery_shard_archer"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:red_terracotta"},transformation:{scale:[0.42f,1.0f,0.42f],translation:[0.29f,0.1875f,0.29f]},Tags:["portal_pot"]}
execute if entity @e[tag=newest,nbt={data:{shard_1:"minecraft:pottery_shard_arms_up"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:light_blue_terracotta"},transformation:{scale:[0.42f,1.0f,0.42f],translation:[0.29f,0.1875f,0.29f]},Tags:["portal_pot"]}
execute if entity @e[tag=newest,nbt={data:{shard_1:"minecraft:pottery_shard_prize"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:lime_terracotta"},transformation:{scale:[0.42f,1.0f,0.42f],translation:[0.29f,0.1875f,0.29f]},Tags:["portal_pot"]}
execute if entity @e[tag=newest,nbt={data:{shard_1:"minecraft:pottery_shard_skull"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:yellow_terracotta"},transformation:{scale:[0.42f,1.0f,0.42f],translation:[0.29f,0.1875f,0.29f]},Tags:["portal_pot"]}

execute if entity @e[tag=newest,nbt={data:{shard_2:"minecraft:pottery_shard_archer"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:red_terracotta"},transformation:{scale:[0.44f,1.0f,0.44f],translation:[0.28f,0.125f,0.28f]},Tags:["portal_pot"]}
execute if entity @e[tag=newest,nbt={data:{shard_2:"minecraft:pottery_shard_arms_up"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:light_blue_terracotta"},transformation:{scale:[0.44f,1.0f,0.44f],translation:[0.28f,0.125f,0.28f]},Tags:["portal_pot"]}
execute if entity @e[tag=newest,nbt={data:{shard_2:"minecraft:pottery_shard_prize"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:lime_terracotta"},transformation:{scale:[0.44f,1.0f,0.44f],translation:[0.28f,0.125f,0.28f]},Tags:["portal_pot"]}
execute if entity @e[tag=newest,nbt={data:{shard_2:"minecraft:pottery_shard_skull"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:yellow_terracotta"},transformation:{scale:[0.44f,1.0f,0.44f],translation:[0.28f,0.125f,0.28f]},Tags:["portal_pot"]}

execute if entity @e[tag=newest,nbt={data:{shard_3:"minecraft:pottery_shard_archer"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:red_terracotta"},transformation:{scale:[0.46f,1.0f,0.46f],translation:[0.27f,0.0625f,0.27f]},Tags:["portal_pot"]}
execute if entity @e[tag=newest,nbt={data:{shard_3:"minecraft:pottery_shard_arms_up"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:light_blue_terracotta"},transformation:{scale:[0.46f,1.0f,0.46f],translation:[0.27f,0.0625f,0.27f]},Tags:["portal_pot"]}
execute if entity @e[tag=newest,nbt={data:{shard_3:"minecraft:pottery_shard_prize"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:lime_terracotta"},transformation:{scale:[0.46f,1.0f,0.46f],translation:[0.27f,0.0625f,0.27f]},Tags:["portal_pot"]}
execute if entity @e[tag=newest,nbt={data:{shard_3:"minecraft:pottery_shard_skull"}}] align xyz summon minecraft:block_display run data merge entity @s {block_state:{Name:"minecraft:yellow_terracotta"},transformation:{scale:[0.46f,1.0f,0.46f],translation:[0.27f,0.0625f,0.27f]},Tags:["portal_pot"]}

tag @e[tag=newest] remove newest
kill @s