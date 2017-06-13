#!/bin/sh

PURE_API_URL=${PURE_API_URL:-''}
PURE_USERNAME=${PURE_USERNAME:-''}
PURE_PASSWORD=${PURE_PASSWORD:-''}
OUTPUT_DIR=${OUTPUT_DIR:-'/dmao-data'}
EXTRACT_AREA=${EXTRACT_AREA:-'organisation'}
CHUNK_SIZE=${CHUNK_SIZE:-'200'}
DELAY_EXTRACT=${DELAY_EXTRACT:-false}

# Start extract

if $DELAY_EXTRACT
then
    echo "Extracting with iteration delay - This should prevent overloading the requested Pure Service"
    pure-extractor -s "${PURE_API_URL}" -u "${PURE_USERNAME}" -p "${PURE_PASSWORD}" -c "${CHUNK_SIZE}" -d -o "${OUTPUT_DIR}" "${EXTRACT_AREA}"
else
    echo "Extracting without iteration delay - Be careful not to overload the requested Pure Service"
    pure-extractor -s "${PURE_API_URL}" -u "${PURE_USERNAME}" -p "${PURE_PASSWORD}" -c "${CHUNK_SIZE}" -o "${OUTPUT_DIR}" "${EXTRACT_AREA}"
fi
