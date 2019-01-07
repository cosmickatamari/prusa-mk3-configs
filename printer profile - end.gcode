G4 ; wait
G92 E0 ; prepare to retract
G1 E-1 F2100; retract to avoid ooze
M221 S100 ; reset extruder factor to 100%
M900 K0 ; reset linear acceleration
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
{if layer_z < max_print_height}G1 Z{z_offset+min(layer_z+60, max_print_height)}{endif} ; Move print head up
G0 X0 Y200 ; present bed
M84 ; disable motors
M107 ; turn off fan
M300 S100 P10 ; chirp