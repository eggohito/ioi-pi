#> ioi-pi:impl/selected_item/get/non-player_entity/process
#
#@within function ioi-pi:impl/selected_item/get/non-player_entity


data modify storage ioi-pi:temp temp.items set from entity @s Items

execute if data storage ioi-pi:temp temp.items[{tag: {ioi-pi: {selected: 1b}}}] run function ioi-pi:impl/selected_item/modify


data modify entity @s Items set from storage ioi-pi:temp temp.items
