# This function executes every second

# We need to reset the tick counter
scoreboard players set #tic_in_sec jac_timer 0
# And update the second counter
scoreboard players add #sec_in_min jac_timer 1
execute if score #sec_in_min jac_timer matches 60.. run \
  function jac:period/minute
