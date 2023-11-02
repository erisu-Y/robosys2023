#!/bin/bash -xv
# SPDX-FileCopyrightText:2023 Yuto Okuda
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/o TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = 15.0 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]	   || ng ${LINENO}
[ "${out}" = "" ]  || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ]       || ng ${LINENO}
[ "${out}" = "" ]  || ng ${LINENO}

[ "$res" = 0 ] && echo OK       # &&(AND記号)は左側が成功すると右側を実行
exit $res


