execute if score on_modify ioi-pi matches 1 if entity @s[tag = example.remove_eyes] if data storage ioi-pi:output {item: {id: "minecraft:end_portal_frame", tag: {has_eyes: 1b}}} run function example:remove_eyes/on_modify

execute if score after_modifying ioi-pi matches 1 if entity @s[tag = example.remove_eyes] run function example:remove_eyes/after_modifying
