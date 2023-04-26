#   Play a sound event upon putting eyes into the End Portal Frame item
playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~


#   Count how many Ender Eyes will be added to the End Portal Frame item
execute store result score #eyes.to_add eyes_on_frame run clear @s minecraft:ender_eye{ioi_pi: {selected: 1b, type: "using_item"}} 0


#   Get the total amount of Ender Eyes that will be stored in the End Portal Frame item
scoreboard players operation #eyes.total_amount eyes_on_frame = #eyes.to_add eyes_on_frame

scoreboard players operation #eyes.total_amount eyes_on_frame += #eyes.stored_amount eyes_on_frame


#   If the total amount of Ender Eyes that will be stored is less or equal to the max amount of eyes that can be stored, clear all the used Ender Eyes
execute if score #eyes.total_amount eyes_on_frame <= #eyes.max_amount eyes_on_frame run clear @s minecraft:ender_eye{ioi_pi: {selected: 1b, type: "using_item"}}


#   Otherwise, handle the excess amount of Ender Eyes
execute if score #eyes.total_amount eyes_on_frame > #eyes.max_amount eyes_on_frame run function example:eyes_on_frame/modify/phase/start/excess_eyes/handle


#   Use the total amount of Ender Eyes as the new amount of Ender Eyes stored in the End Portal Frame item
execute store result storage ioi-pi:io root.item.tag.StoredEyes int 1 run scoreboard players get #eyes.total_amount eyes_on_frame

data modify storage ioi-pi:io root.item.tag.HasEyes set value 1b


#   Display how much Ender Eyes are stored in the End Portal Frame item in its lore
data modify block -30000000 0 1603 Text1 set value '{"translate": "Eyes stored: %s", "with": [{"storage": "ioi-pi:io", "nbt": "root.item.tag.StoredEyes"}], "color": "gray", "italic": false, "interpret": true}'

data remove storage ioi-pi:io root.item.tag.display.Lore

data modify storage ioi-pi:io root.item.tag.display.Lore append from block -30000000 0 1603 Text1
