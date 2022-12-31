foreach power_pin $::env(STD_CELL_POWER_PINS) {
    add_global_connection \
        -net $::env(VDD_NETS) \
        -inst_pattern .* \
        -pin_pattern $power_pin \
        -power
}
foreach ground_pin $::env(STD_CELL_GROUND_PINS) {
    add_global_connection \
        -net $::env(GND_NETS) \
        -inst_pattern .* \
        -pin_pattern $ground_pin \
        -ground
}


set_voltage_domain -name CORE -power $::env(VDD_NETS) -ground $::env(GND_NETS)

define_pdn_grid \
        -name stdcell_grid \
        -starts_with POWER \
        -voltage_domain CORE \
        -pins "met4 met5"

add_pdn_stripe \
    -grid stdcell_grid \
    -layer met5 \
    -width 4.5 \
    -pitch $::env(FP_PDN_HPITCH) \
    -offset $::env(FP_PDN_HOFFSET) \
    -starts_with POWER -extend_to_core_ring

add_pdn_connect \
    -grid stdcell_grid \
    -layers "met4 met5"

add_pdn_ring \
        -grid stdcell_grid \
        -layers "met4 met5" \
        -widths "4.5 4.5" \
        -spacings "1.7 1.7" \
        -core_offset "20 20"

define_pdn_grid \
    -macro \
    -default \
    -name macro \
    -starts_with POWER \
    -halo "0 0"

add_pdn_connect \
    -grid macro \
    -layers "met4 met5"
    



