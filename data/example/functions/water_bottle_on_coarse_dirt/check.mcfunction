execute if score on_modify ioi-pi matches 1 if entity @s[tag = example.water_bottle_on_coarse_dirt] if data storage ioi-pi:output {item: {id: "minecraft:coarse_dirt"}} run function example:water_bottle_on_coarse_dirt/on_modify

execute if score after_modifying ioi-pi matches 1 if entity @s[tag = example.water_bottle_on_coarse_dirt] run function example:water_bottle_on_coarse_dirt/after_modifying
