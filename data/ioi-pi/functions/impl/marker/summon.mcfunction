#> ioi-pi:impl/marker/summon
#
#   >   Summon a marker entity with the `ioi-pi.block_with_inventory` scoreboard tag
#
#   -   Solely used for marking a block with an inventory
#   -   Called by the `ioi-pi:impl/mark/block_w_inventory
#
#@private


summon minecraft:marker ~ ~ ~ {Tags: ["ioi-pi.block_with_inventory"]}
