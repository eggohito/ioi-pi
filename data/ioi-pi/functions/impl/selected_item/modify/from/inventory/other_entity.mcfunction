#> ioi-pi:impl/selected_item/modify/from/inventory/other_entity
#
#   >   Modify the selected item(s) from the inventory of nearby entities
#
#@within function ioi-pi:impl/selected_item/get/from/inventory/other_entity


#   Add a temporary tag
tag @s add ioi-pi.entity_with_inventory


#   Prepare and modify the selected items
execute unless data storage ioi-pi:tmp/general root.queue.in if data entity @s Items run data modify storage ioi-pi:tmp/general root.queue.in set from entity @s Items

execute unless data storage ioi-pi:tmp/general root.queue.in if data entity @s Inventory run data modify storage ioi-pi:tmp/general root.queue.in set from entity @s Inventory


execute if data storage ioi-pi:tmp/general root.queue.in[{tag: {ioi_pi: {selected: 1b}}}] run function ioi-pi:impl/selected_item/modify


execute if data storage ioi-pi:tmp/general root.queue.out[] if data entity @s Items run data modify entity @s Items set from storage ioi-pi:tmp/general root.queue.out

execute if data storage ioi-pi:tmp/general root.queue.out[] if data entity @s Inventory run data modify entity @s Inventory set from storage ioi-pi:tmp/general root.queue.out


#   Remove the temporary tag
tag @s remove ioi-pi.entity_with_inventory
