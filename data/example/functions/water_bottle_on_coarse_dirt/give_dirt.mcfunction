execute store result storage ioi-pi:output item.Count byte 1 run scoreboard players remove #coarse_dirt_count example 1


data modify storage example:water_bottle_on_coarse_dirt temp.item set from storage ioi-pi:output item

data modify storage example:water_bottle_on_coarse_dirt temp.item.id set value "minecraft:dirt"

data modify storage example:water_bottle_on_coarse_dirt temp.item.Count set value 1b 
