# This function executes every minute

# We need to reset the second counter
scoreboard players set #sec_in_min jac_timer 0
# And update the minute counter
scoreboard players add #min_in_hour jac_timer 1
execute if score #min_in_hour jac_timer matches 60.. run \
  function jac:period/hour
