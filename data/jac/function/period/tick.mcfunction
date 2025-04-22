# This file executes every tick
# It is used to update the boss bar and other things

# Update the boss bar
execute if data storage jac:boss {isActive:True} run \
  function jac:update/bossbar

function jac:lag_test

# Update tick counter
scoreboard players add #tic_in_sec jac_timer 1
execute if score #tic_in_sec jac_timer matches 20.. run \
  function jac:period/second
