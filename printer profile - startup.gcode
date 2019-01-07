M115 U3.4.1 ; tell printer latest fw version
M83  ; extruder relative mode
M140 S[first_layer_bed_temperature] ; set bed temp
M104 S170; set extruder temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S170 ; wait for extruder temp
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling
G1 Y-3.0 Z30 F1000.0 ; go outside print area
M104 S[first_layer_temperature] ; set extruder temp
M109 S[first_layer_temperature] ; wait for extruder temp
G1 Y-3.0 Z0 F1000.0 ; go outside print area
G92 E0.0
G1 X60.0 E9.0  F1000.0 ; intro line
G1 X100.0 E12.5  F1000.0 ; intro line
G92 E0.0