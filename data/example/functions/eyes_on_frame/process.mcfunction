#   Add an example scoreboard objective
scoreboard objectives add example dummy


#   Store the count of how many items are going to be added to the `item.tag.example` NBT path of the `ioi-pi:output` storage
execute store result score #items_to_add example run clear @s minecraft:ender_eye{ioi-pi: {selected: 1b, extra: 1b}}


#   Store the count of how many items have been added so far to the `item.tag.example` NBT path of the `ioi-pi:output` storage
execute store result score #items_added example run data get storage ioi-pi:output item.tag.stored_eyes


#   Add the sum of `#items_to_add` and `#items_added` score holders to the `item.tag.example` NBT path of the `ioi-pi:output` storage
scoreboard players operation #items_to_add example += #items_added example
 
execute if data storage ioi-pi:output {item: {id: "minecraft:end_portal_frame"}} store result storage ioi-pi:output item.tag.stored_eyes int 1 run scoreboard players get #items_to_add example
