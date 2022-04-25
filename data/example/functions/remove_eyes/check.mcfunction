execute if entity @s[tag = example.remove_eyes] if data storage ioi-pi:output {item: {id: "minecraft:end_portal_frame", tag: {has_eyes: 1b}}} run function example:remove_eyes/process
