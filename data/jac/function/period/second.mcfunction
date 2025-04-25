# This function executes every second

# make_wearable trigger
execute as @a[scores={make_wearable=1..}] run \
    function jac:triggers/make_wearable

# We need to reset the tick counter
scoreboard players set #tic_in_sec jac_timer 0
# And update the second counter
scoreboard players add #sec_in_min jac_timer 1
execute if score #sec_in_min jac_timer matches 60.. run \
  function jac:period/minute
