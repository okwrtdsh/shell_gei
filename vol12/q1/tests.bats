#!/usr/bin/env bats
load ../../tests/helper

@test "q1" {
	run bash ./ans.sh
	ans=$(cat ./ans.txt)
	[ "${status}" -eq 0 ]
	[ "${output}" = "${ans}" ]
}
