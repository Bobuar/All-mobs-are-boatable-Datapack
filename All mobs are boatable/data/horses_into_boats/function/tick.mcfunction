function horses_into_boats:check_for_new_animals
function horses_into_boats:check_for_new_boats

execute as @e[tag=is_boat] run scoreboard players set @s riders_in_boat 0
execute as @e[tag=is_boat] on passengers on vehicle run scoreboard players add @s riders_in_boat 1

execute as @e[tag=is_boat,tag=two_passengers,scores={riders_in_boat=..1}] at @s if entity @e[distance=..2,tag=cant_fit_in_boat,tag=!in_boat] run function horses_into_boats:add_nearest_to_boat

execute as @e[tag=is_boat,tag=one_passenger,scores={riders_in_boat=0}] at @s if entity @e[distance=..2,tag=cant_fit_in_boat,tag=!in_boat] run function horses_into_boats:add_nearest_to_boat

function horses_into_boats:out_of_boat