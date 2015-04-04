LANG=C sar -u | awk  'BEGIN{OFS=","}{if (NR == 3) {$1 = "Time"; print $0} else if ( $NF ~ /[0-9]/) {$1=$1; print $0} }' > cpu.csv
LANG=C sar -B | awk  'BEGIN{OFS=","}{if (NR == 3) {$1 = "Time"; print $0} else if ( $NF ~ /[0-9]/) {$1=$1; print $0} }' > paging.csv
LANG=C sar -b | awk  'BEGIN{OFS=","}{if (NR == 3) {$1 = "Time"; print $0} else if ( $NF ~ /[0-9]/) {$1=$1; print $0} }' > io.csv
LANG=C sar -d | awk  'BEGIN{OFS=","}{if (NR == 3) {$1 = "Time"; print $0} else if ( $NF ~ /[0-9]/) {$1=$1; print $0} }' > block_dev.csv
LANG=C sar -n DEV | awk  'BEGIN{OFS=","}{if (NR == 3) {$1 = "Time"; print $0} else if ( $NF ~ /[0-9]/) {$1=$1; print $0} }' > network.csv
LANG=C sar -n EDEV | awk  'BEGIN{OFS=","}{if (NR == 3) {$1 = "Time"; print $0} else if ( $NF ~ /[0-9]/) {$1=$1; print $0} }' > network_error.csv
