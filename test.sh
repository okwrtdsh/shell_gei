#!/bin/bash

for file in `ls $@`; do
	echo $file
	bats_file=$(basename $file)
	workdir_name=$(dirname $file)
	docker run --rm -e LANG="ja_JP.UTF-8" -v $(pwd):/work -w /work/$workdir_name -it okwrtdsh/shell_gei bats $bats_file
done
