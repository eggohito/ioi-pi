#   Play a sound event upon putting eyes to the End Portal Frame
playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~


#   Count how many Ender Eyes are going to be added to the `item.tag.eyes` NBT path of the `ioi-pi:output` storage
execute store result score #items_to_add example run clear @s minecraft:ender_eye{ioi-pi: {selected: 1b, extra: 1b}} 0


#   Count how many Ender Eyes have been added so far to the `item.tag.eyes` NBT path of the `ioi-pi:output` storage
execute store result score #items_added example run data get storage ioi-pi:output item.tag.eyes


#   Get the sum of the `#items_to_add` and `#items_added` score holders
scoreboard players operation #items_to_add example += #items_added example


#   Check if the score of the `#items_to_add` score holder is greater than the score of the `#max_eyes` score holder
execute if score #items_to_add example <= #max_eyes example run clear @s minecraft:ender_eye{ioi-pi: {selected: 1b, extra: 1b}}

execute if score #items_to_add example > #max_eyes example run function example:eyes_on_frame/on_modify/handle_overflows


#   Add the sum of `#items_to_add` and `#items_added` score holders to the `item.tag.eyes` NBT path of the `ioi-pi:output` storage
execute store result storage ioi-pi:output item.tag.eyes int 1 run scoreboard players get #items_to_add example

data modify storage ioi-pi:output item.tag.has_eyes set value 1b


#   Display how many Ender Eyes are stored in the End Portal Frame in the `display.Lore` NBT of the said End Portal Frame item 
setblock -30000000 0 1603 minecraft:oak_sign

data modify block -30000000 0 1603 Text1 set value '{"translate": "Eyes stored: %s", "with": [{"storage": "ioi-pi:output", "nbt": "item.tag.eyes"}], "color": "gray", "italic": false, "interpret": true}'

data remove storage ioi-pi:output item.tag.display.Lore

data modify storage ioi-pi:output item.tag.display.Lore append from block -30000000 0 1603 Text1
