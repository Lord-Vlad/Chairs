#execute if block ~ ~ ~ #minecraft:stairs[facing=north] align xyz run summon pig ~.5 ~-.39999 ~.55 {Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:1f,Saddle:1b,Tags:["chair"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1}]}

#execute if block ~ ~ ~ #minecraft:slabs align xyz run summon pig ~.5 ~-.39 ~.5 {NoAI:1,Saddle:1,NoGravity:1,Silent:1,Invulnerable:1,Health:1f,Tags:["chair","chairSlab"],Rotation:[0.0f,0.0f],DeathTime:19,Attributes:[{Name:"generic.max_health",Base:1.0},{Name:"generic.movement_speed",Base:0.0}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],DeathLootTable:"minecraft:empty"}

#get player Rotation
execute as @s at @s run function chair:rotation
#execute store result score @s rotation run data get entity @p Rotation[0]

#South
execute if score @s rotation matches 0..45 align xyz positioned ~.5 ~-.5399 ~.55 run summon armor_stand ~ ~-0.73 ~ {Small:1b,Rotation:[0.0f, 0.0f],DisabledSlots:4144959,Marker:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["chair","chairSlab","chairSouth"],Passengers:[{id:"minecraft:pig",Rotation:[0.0f, 0.0f],NoGravity:1b,Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:1f,Saddle:1b,Tags:["chair","chairSlab","chairSouth"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0}]}]}
execute if score @s rotation matches 315..360 align xyz positioned ~.5 ~-.5399 ~.55 run summon armor_stand ~ ~-0.73 ~ {Small:1b,Rotation:[0.0f, 0.0f],DisabledSlots:4144959,Marker:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["chair","chairSlab","chairSouth"],Passengers:[{id:"minecraft:pig",Rotation:[0.0f, 0.0f],NoGravity:1b,Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:1f,Saddle:1b,Tags:["chair","chairSlab","chairSouth"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0}]}]}
#West
execute if score @s rotation matches 45..134 align xyz positioned ~.45 ~-.5399 ~.5 run summon armor_stand ~ ~-0.73 ~ {Small:1b,Rotation:[90.0f, 0.0f],DisabledSlots:4144959,Marker:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["chair","chairSlab","chairWest"],Passengers:[{id:"minecraft:pig",Rotation:[90.0f, 0.0f],NoGravity:1b,Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:1f,Saddle:1b,Tags:["chair","chairSlab","chairWest"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0}]}]}
#East
execute if score @s rotation matches 226..314 align xyz positioned ~.55 ~-.5399 ~.5 run summon armor_stand ~ ~-0.73 ~ {Small:1b,Rotation:[-90.0f, 0.0f],DisabledSlots:4144959,Marker:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["chair","chairSlab","chairEast"],Passengers:[{id:"minecraft:pig",Rotation:[-90.0f, 0.0f],NoGravity:1b,Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:1f,Saddle:1b,Tags:["chair","chairSlab","chairEast"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0}]}]}
#North
execute if score @s rotation matches 135..225 align xyz positioned ~.5 ~-.5399 ~.45 run summon armor_stand ~ ~-0.73 ~ {Small:1b,Rotation:[180.0f, 0.0f],DisabledSlots:4144959,Marker:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["chair","chairSlab","chairNorth"],Passengers:[{id:"minecraft:pig",Rotation:[180.0f, 0.0f],NoGravity:1b,Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:1f,Saddle:1b,Tags:["chair","chairSlab","chairNorth"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0}]}]}


playsound minecraft:block.wool.place block @a[distance=..5] ~ ~ ~ 1 2

kill @s
#tag @s add done
