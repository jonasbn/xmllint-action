#!/bin/bash

shopt -s globstar

xmllint $1 --schema $2 --noout
