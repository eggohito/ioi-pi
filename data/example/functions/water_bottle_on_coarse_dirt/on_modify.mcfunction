#   Add a scoreboard objective
scoreboard objectives add example dummy


#   Play a sound event
playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1 1.5


#   Count how many Coarse Dirt items are going to be modified
execute store result score #coarse_dirt_count example run data get storage ioi-pi:output item.Count


#   If the score of the `#coarse_dirt_count` score holder is 1, modify the ID of the item to `"minecraft:dirt"`. Otherwise, give a similar item and decrease the count of the Coarse Dirt item
execute if score #coarse_dirt_count example matches 1 run data modify storage ioi-pi:output item.id set value "minecraft:dirt"

execute if score #coarse_dirt_count example matches 2.. run function example:water_bottle_on_coarse_dirt/on_modify/give_dirt
