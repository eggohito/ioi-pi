#   Subtract 1 from the current count of the Coarse Dirt item that is being modified
execute store result storage ioi-pi:output item.Count byte 1 run scoreboard players remove #coarse_dirt_count example 1


#   Prepare the item to be given later
data modify storage example:water_bottle_on_coarse_dirt temp.item set from storage ioi-pi:output item

data modify storage example:water_bottle_on_coarse_dirt temp.item.id set value "minecraft:dirt"

data modify storage example:water_bottle_on_coarse_dirt temp.item.Count set value 1b

data remove storage example:water_bottle_on_coarse_dirt temp.item.tag.ioi-pi


#   Remove the `tag` NBT of the item if it's empty
execute store result score #tags example run data get storage example:water_bottle_on_coarse_dirt temp.item.tag

execute unless score #tags example matches 1.. run data remove storage example:water_bottle_on_coarse_dirt temp.item.tag
