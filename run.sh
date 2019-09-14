#!/bin/bash

docker run --rm -v $(pwd):/work -w /work/ -it okwrtdsh/shell_gei $@
