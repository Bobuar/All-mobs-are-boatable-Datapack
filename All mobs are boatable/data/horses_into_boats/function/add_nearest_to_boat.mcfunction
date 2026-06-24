ride @e[distance=..2,tag=cant_fit_in_boat,tag=!in_boat,limit=1,sort=nearest] mount @s

execute on passengers run execute if entity @s[tag=cant_fit_in_boat,tag=!in_boat] run tag @s add in_boat