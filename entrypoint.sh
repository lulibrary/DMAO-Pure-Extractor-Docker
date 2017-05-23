#!/bin/sh

PURE_API_URL=${PURE_API_URL:-''}
PURE_USERNAME=${PURE_USERNAME:-''}
PURE_PASSWORD=${PURE_PASSWORD:-''}
OUTPUT_DIR=${OUTPUT_DIR:-'/dmao-data'}
EXTRACT_AREA=${EXTRACT_AREA:-'organisation'}
CHUNK_SIZE=${CHUNK_SIZE:-'200'}

# Start extract

pure-extractor -s "${PURE_API_URL}" -u "${PURE_USERNAME}" -p "${PURE_PASSWORD}" -c "${CHUNK_SIZE}" -o "${OUTPUT_DIR}" "${EXTRACT_AREA}"
