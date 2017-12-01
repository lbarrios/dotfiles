#!/bin/sh
# solves a mathematical operation (using BC language).
# parameter: the mathematical expression (eg, 1+1)

bc << EOF
scale=8
$@
quit
EOF
