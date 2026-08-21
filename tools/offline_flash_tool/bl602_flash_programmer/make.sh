#!/usr/bin/env bash
# Build and/or flash bl602_flash_programmer via CMake presets + ST-Link.
#
# Examples:
#   ./make.sh build
#   ./make.sh flash
#   ./make.sh build flash
#   ./make.sh --config Debug build flash
#   ./make.sh -c Release flash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

CONFIG="Release"
DO_BUILD=0
DO_FLASH=0
FLASH_ADDR="0x08000000"
PROJECT_NAME="bl602_flash_programmer"

usage() {
  cat <<EOF
Usage: $0 [options] [build] [flash]

Actions:
  build              Configure and compile with cmake --preset
  flash              Program STM32 via ST-Link (st-flash)

Options:
  -c, --config NAME  Build config: Debug or Release (default: Release)
  -a, --addr ADDR    Flash start address (default: ${FLASH_ADDR})
  -h, --help         Show this help

Examples:
  $0 build
  $0 flash
  $0 build flash
  $0 --config Debug build flash
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    build)
      DO_BUILD=1
      shift
      ;;
    flash)
      DO_FLASH=1
      shift
      ;;
    -c|--config)
      CONFIG="${2:-}"
      shift 2
      ;;
    -a|--addr)
      FLASH_ADDR="${2:-}"
      shift 2
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage
      exit 1
      ;;
  esac
done

if [[ "$DO_BUILD" -eq 0 && "$DO_FLASH" -eq 0 ]]; then
  echo "Error: specify at least one action: build or flash" >&2
  usage
  exit 1
fi

if [[ "$CONFIG" != "Debug" && "$CONFIG" != "Release" ]]; then
  echo "Error: --config must be Debug or Release (got: $CONFIG)" >&2
  exit 1
fi

BIN_PATH="${SCRIPT_DIR}/build/${CONFIG}/${PROJECT_NAME}.bin"

do_build() {
  echo "==== Build ${CONFIG} ===="
  cmake --preset "${CONFIG}"
  cmake --build --preset "${CONFIG}"
  echo "Artifact: ${BIN_PATH}"
}

do_flash() {
  echo "==== Flash ${CONFIG} via ST-Link ===="
  if [[ ! -f "$BIN_PATH" ]]; then
    echo "Error: firmware not found: ${BIN_PATH}" >&2
    echo "Run: $0 --config ${CONFIG} build" >&2
    exit 1
  fi

  if ! command -v st-flash >/dev/null 2>&1; then
    echo "Error: st-flash not found in PATH" >&2
    echo "Install stlink tools, e.g. apt install stlink-tools" >&2
    exit 1
  fi

  st-info --probe || true
  st-flash --reset write "${BIN_PATH}" "${FLASH_ADDR}"
}

if [[ "$DO_BUILD" -eq 1 ]]; then
  do_build
fi
if [[ "$DO_FLASH" -eq 1 ]]; then
  do_flash
fi
