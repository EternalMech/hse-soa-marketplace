#!/bin/sh
set -eu

source_file="${1:?Usage: sh tools/render-c4.sh path/to/diagram.puml}"
image='plantuml/plantuml@sha256:d08610df482510844382caa4e016ba2bf7e3231f630f02ee12f250f3416c62b1'
docker run --rm --network none -i "$image" -tsvg -pipe < "$source_file" > "${source_file%.puml}.svg"
