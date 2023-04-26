execute if data storage ioi-pi:io {root: {phase: "start", item: {id: "minecraft:end_portal_frame"}}} if entity @s[tag = example.remove_eyes] run function example:remove_eyes/modify/phase/start

execute if data storage ioi-pi:io {root: {phase: "end", item: {id: "minecraft:end_portal_frame"}}} if entity @s[tag = example.remove_eyes] run function example:remove_eyes/modify/phase/end
