#   Play a sound event upon putting eyes to the End Portal Frame
playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~


#   Store the count of how many items are going to be added to the `item.tag.example` NBT path of the `ioi-pi:output` storage
execute store result score #items_to_add example run clear @s minecraft:ender_eye{ioi-pi: {selected: 1b, extra: 1b}} 0


#   Store the count of how many items have been added so far to the `item.tag.example` NBT path of the `ioi-pi:output` storage
execute store result score #items_added example run data get storage ioi-pi:output item.tag.eyes


#   Add the sum of `#items_to_add` and `#items_added` score holders to the `item.tag.example` NBT path of the `ioi-pi:output` storage
scoreboard players operation #items_to_add example += #items_added example

execute if score #items_to_add example > #max_eyes example run function example:eyes_on_frame/on_modify/get_extra_eyes

execute store result storage ioi-pi:output item.tag.eyes int 1 run scoreboard players get #items_to_add example

data modify storage ioi-pi:output item.tag.has_eyes set value 1b


#   Display the count of the Ender Eyes stored in the End Portal Frame
setblock -30000000 0 1603 minecraft:oak_sign

data modify block -30000000 0 1603 Text1 set value '{"translate": "Eyes stored: %s", "with": [{"storage": "ioi-pi:output", "nbt": "item.tag.eyes"}], "color": "gray", "italic": false, "interpret": true}'

data remove storage ioi-pi:output item.tag.display.Lore

data modify storage ioi-pi:output item.tag.display.Lore append from block -30000000 0 1603 Text1


#   Check for overflows
execute if score #set_extra_eyes_to example matches 1.. run function example:eyes_on_frame/on_modify/set_extra_eyes

execute unless score #set_extra_eyes_to example matches 1.. run clear @s minecraft:ender_eye{ioi-pi: {selected: 1b, extra: 1b}}
