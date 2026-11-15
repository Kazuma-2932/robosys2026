#!/bin/bash
# SPDX-FileCopyrightText: 2026 Kazuma Fukumizu
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目のテスト失敗"
    res=1
}

res=0

out=$(echo "10 20 30 40 50" | ./numstat)
[ "$?" = 0 ] || ng "$LINENO"
[ "$out" = "count: 5
min: 10.0
max: 50.0
average: 30.0" ] || ng "$LINENO"

out=$(echo | ./numstat 2>/dev/null)
[ "$?" = 1 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

out=$(echo "10 abc 30" | ./numstat 2>/dev/null)
[ "$?" = 1 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK

exit $res

