#   Set the ID of the selected item (in this case, a wooden sword) to Dirt because we do a little trolling
data modify storage ioi-pi:io root.item.id set value "minecraft:dirt"


#   Remove the tags of the item
data remove storage ioi-pi:io root.item.tag


#   Replace the name and lore of the item
data modify storage ioi-pi:io root.item.tag.display.Name set value '{"text": "Trash", "italic": false, "color": "dark_gray"}'

data modify storage ioi-pi:io root.item.tag.display.Lore set value ['{"text": "Get epic trolled!", "color": "gray", "italic": false}']
