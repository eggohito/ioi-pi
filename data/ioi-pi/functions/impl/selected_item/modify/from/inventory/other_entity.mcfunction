#> ioi-pi:impl/selected_item/modify/from/inventory/other_entity
#
#   >   Modify the selected item(s) from the inventory of nearby entities
#
#@within function ioi-pi:impl/selected_item/get/from/inventory/other_entity


#   Add a temporary tag
tag @s add ioi-pi.entity_with_inventory


#   Prepare and modify the selected items
data modify storage ioi-pi:tmp/general root.queue.in set from entity @s Items

execute unless data storage ioi-pi:tmp/general root.queue.in[] run data modify storage ioi-pi:tmp/general root.queue.in set from entity @s Inventory

execute if data storage ioi-pi:tmp/general root.queue.in[{tag: {ioi_pi: {selected: 1b}}}] run function ioi-pi:impl/selected_item/modify


#   Remove the temporary tag
tag @s remove ioi-pi.entity_with_inventory
