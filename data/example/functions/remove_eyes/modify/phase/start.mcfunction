#declare storage example:remove_eyes


#   Add a scoreboard objective for preparation
scoreboard objectives add eyes_on_frame dummy


#   Count how many Ender Eyes will be given to the player/removed from the End Portal Frame item
execute store result score #eyes_to_give eyes_on_frame run data get storage ioi-pi:io root.item.tag.StoredEyes


#   Remove the custom NBTs from the End Portal Frame item
data remove storage ioi-pi:io root.item.tag.display

data remove storage ioi-pi:io root.item.tag.HasEyes

data remove storage ioi-pi:io root.item.tag.StoredEyes


#   Prepare the Ender Eye items
function example:remove_eyes/modify/phase/start/prepare_eyes


#   Do some clean up
scoreboard players reset #current_slot eyes_on_frame
