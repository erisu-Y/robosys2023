#!/bin/bash -xv 
# SPDX-FileCopyrightText:2023 Yuto Okuda
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	reo=1
}

reo=0

### I/o TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = "-3.0" ] || ng ${LINENO}
out=$(seq 10 | ./plus)
[ "${out}" = "5.0" ] || ng ${LINENO}
out=$(seq 1 | ./plus)
[ "${out}" = "-1.0" ] || ng ${LINENO}
out=$(seq 4 | ./plus)
[ "${out}" = "2.0" ] || ng ${LINENO}
out=$(seq 50 | ./plus)
[ "${out}" = "25.0" ] || ng ${LINENO}
out=$(seq 101 | ./plus)
[ "${out}" = "-51.0" ] || ng ${LINENO}
### STRANGE INPUT ###
out=$(echo | ./plus)
[ "$?" = 1 ]       || ng ${LINENO}
[ "${out}" = "" ]  || ng ${LINENO}

[ "$reo" = 0 ] && echo OK       # &&(AND記号)は左側が成功すると右側を実行
exit $reo
