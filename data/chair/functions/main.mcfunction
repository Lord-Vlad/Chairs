execute as @e[type=item,nbt={Item:{id:"minecraft:saddle",Count:1b}}] at @s if block ~ ~ ~ #minecraft:stairs[half=bottom] align xyz positioned ~.5 ~-1 ~.5 unless entity @e[type=minecraft:armor_stand,tag=chair,tag=chairStair,distance=..1] positioned ~ ~1 ~ run function chair:stair
execute as @e[type=item,nbt={Item:{id:"minecraft:saddle",Count:1b}}] at @s if block ~ ~ ~ #minecraft:slabs[type=bottom] align xyz positioned ~.5 ~-1 ~.5 unless entity @e[type=minecraft:armor_stand,tag=chair,tag=chairSlab,distance=..1] positioned ~ ~1 ~ run function chair:slab
#execute as @e[type=item,nbt={Item:{id:"minecraft:saddle",Count:1b}}] at @s if block ~ ~ ~ #minecraft:slabs[type=bottom] align xyz positioned ~.5 ~-1 ~.5 unless entity @e[type=minecraft:armor_stand,tag=chair,tag=chairSlab,dx=0,dz=0,dy=0] positioned ~ ~1 ~ run function chair:slab

#Kill
execute as @e[type=minecraft:armor_stand,tag=chair,tag=chairStair] at @s unless block ~ ~1.7 ~ #minecraft:stairs run function chair:kill
execute as @e[type=minecraft:armor_stand,tag=chair,tag=chairSlab] at @s unless block ~ ~1.7 ~ #minecraft:slabs run function chair:kill
#execute as @e[type=pig,tag=chair,tag=chairSlab] at @s align xyz positioned ~.5 ~ ~.5 unless block ~ ~1.5 ~ #minecraft:slabs run say ded

#Correction
#Stair
execute as @e[type=pig,tag=chair,tag=chairStair] at @s align xyz if entity @p[dx=0,dz=0,dy=1] unless entity @p[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] positioned ~ ~.39 ~ run function chair:correction
#Slab
#execute as @e[type=pig,tag=chair,tag=chairSlab] at @s align xyz positioned ~.5 ~1 ~.5 if entity @p[dx=0,dz=0,dy=1] unless entity @p[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] at @s run function chair:direction

#execute as @e[type=pig,tag=chair,tag=chairSlab] at @s align xyz if entity @p[dx=0,dz=0,dy=1] unless entity @p[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] positioned ~ ~1 ~ run function chair:direction



schedule function chair:main 10t replace
