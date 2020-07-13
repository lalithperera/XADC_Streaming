# initialize memory
for {set i 0xa000000} {$i < 0xa001000} {incr i 4} {
mwr $i 0
}
mrd 0xa000000 10
