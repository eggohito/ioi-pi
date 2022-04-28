#   Add a scoreboard objective
scoreboard objectives add example dummy


#   Play a sound event
playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1 1.5


#   Change the ID of the selected item to `minecraft:dirt`
execute store result score #coarse_dirt_count example run data get storage ioi-pi:output item.Count


execute if score #coarse_dirt_count example matches 1 run data modify storage ioi-pi:output item.id set value "minecraft:dirt"

execute if score #coarse_dirt_count example matches 2.. run function example:water_bottle_on_coarse_dirt/give_dirt
