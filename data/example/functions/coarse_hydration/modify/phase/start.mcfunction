#declare storage example:coarse_hydration


#   Add a scoreboard objective
scoreboard objectives add coarse_hydration dummy


#   Play a sound event
playsound minecraft:entity.generic.splash master @a ~ ~ ~ 1 1.5


#   Clear the water bottle used
clear @s minecraft:potion{ioi_pi: {selected: 1b, type: "using_item"}}


#   Count how many Coarse Dirt items are going to be modified
execute store result score #coarse_dirts coarse_hydration run data get storage ioi-pi:io root.item.Count


#   If the score of the `#coarse_dirts` score holder is 1, modify the ID of the item to `"minecraft:dirt"`. Otherwise, give a similar item and decrease the count of the Coarse Dirt item
execute if score #coarse_dirts coarse_hydration matches 1 run data modify storage ioi-pi:io root.item.id set value "minecraft:dirt"

execute if score #coarse_dirts coarse_hydration matches 2.. run function example:coarse_hydration/modify/phase/start/prepare_dirt
