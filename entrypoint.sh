#!/bin/bash

set -eu -o pipefail

shopt -s globstar

#xmllint xml/{,**/}*.xml --schema myschema.xsd --noout
command="xmllint $1 --schema $2 --noout"

echo "$command"

# shellcheck disable=SC2086
eval $command
