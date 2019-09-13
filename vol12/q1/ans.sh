#!/bin/bash

seq -f " %02g" 21 | sed '1~10s/ //;s/[0-9]\{2\}/x x/'
