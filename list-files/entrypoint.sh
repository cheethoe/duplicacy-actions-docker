#!/bin/sh

LATEST_SNAPSHOT=`/${DUPLICACY_BASE_NAME} -background list -a | grep -E "^Snapshot" | grep -o -E "\b[0-9]{8}\b" | sort -n | tail -n 1`

/${DUPLICACY_BASE_NAME} -background list -files -t ${TAG:-$LATEST_SNAPSHOT}
