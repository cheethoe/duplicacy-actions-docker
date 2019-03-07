#!/bin/sh
if [[ ! -z "$TAG" ]]; then
    for date in $TAG; do
        PRUNE_OPTIONS="${PRUNE_OPTIONS} -t ${date}"
    done
else
    for keep_entry in $KEEP; do
        PRUNE_OPTIONS="${PRUNE_OPTIONS} -keep ${keep_entry}"
    done
fi

/${DUPLICACY_BASE_NAME} -background prune ${PRUNE_OPTIONS}
