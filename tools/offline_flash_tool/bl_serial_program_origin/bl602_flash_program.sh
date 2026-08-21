#!/usr/bin/env bash
# bl602_flash_program.sh - PC-side BL602 UART flasher wrapper
# Example:
#   ./bl602_flash_program.sh --chip bl602 -b 921600 -p /dev/ttyACM0 -f 23.2.1_Combo.bin
# Note: -b/--baud is accepted for CLI compatibility but IGNORED;
#       flashing always uses bflb_iot_tool default baudrate (115200).

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

CHIP=""
PORT=""
FIRMWARE=""
BAUD_IGNORED=""

usage() {
  cat <<EOF
Usage: $0 --chip <chip> -p <port> -f <firmware> [-b <baud>]

Options:
  --chip, -c   Target chip (e.g. bl602)
  -p, --port   Serial port (e.g. /dev/ttyACM0)
  -f, --file   Firmware binary path
  -b, --baud   Accepted but ignored; tool default baudrate is used
  -h, --help   Show this help

Example:
  $0 --chip bl602 -b 921600 -p /dev/ttyACM0 -f 23.2.1_Combo.bin
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --chip|-c)
      CHIP="${2:-}"; shift 2 ;;
    -p|--port)
      PORT="${2:-}"; shift 2 ;;
    -f|--file|--firmware)
      FIRMWARE="${2:-}"; shift 2 ;;
    -b|--baud|--baudrate)
      BAUD_IGNORED="${2:-}"; shift 2 ;;
    -h|--help)
      usage; exit 0 ;;
    *)
      echo "Unknown option: $1" >&2
      usage
      exit 1 ;;
  esac
done

if [[ -z "$CHIP" || -z "$PORT" || -z "$FIRMWARE" ]]; then
  echo "Error: --chip, -p and -f are required." >&2
  usage
  exit 1
fi

# Resolve firmware path (relative to CWD or script dir)
if [[ ! -f "$FIRMWARE" ]]; then
  if [[ -f "$SCRIPT_DIR/$FIRMWARE" ]]; then
    FIRMWARE="$SCRIPT_DIR/$FIRMWARE"
  else
    echo "Error: firmware not found: $FIRMWARE" >&2
    exit 1
  fi
fi

if [[ ! -e "$PORT" ]]; then
  echo "Error: serial port not found: $PORT" >&2
  exit 1
fi

CHIP_LC="$(echo "$CHIP" | tr '[:upper:]' '[:lower:]')"
if [[ "$CHIP_LC" != "bl602" ]]; then
  echo "Warning: this wrapper is validated for bl602; got: $CHIP" >&2
fi

if [[ -n "$BAUD_IGNORED" ]]; then
  echo "Info: ignoring -b $BAUD_IGNORED; using tool default baudrate (115200)."
fi

# Prefer ~/.local/bin (pip --user install path)
export PATH="${HOME}/.local/bin:${PATH}"

FLASH_TOOL=""
if command -v bflb-iot-tool >/dev/null 2>&1; then
  FLASH_TOOL="bflb-iot-tool"
elif command -v bflb_iot_tool >/dev/null 2>&1; then
  FLASH_TOOL="bflb_iot_tool"
elif python3 -c "import bflb_iot_tool" >/dev/null 2>&1; then
  FLASH_TOOL="python3 -m bflb_iot_tool"
else
  echo "Error: bflb-iot-tool not found." >&2
  echo "Install with: pip3 install --user bflb-iot-tool" >&2
  exit 1
fi

echo "Chip      : $CHIP_LC"
echo "Port      : $PORT"
echo "Firmware  : $FIRMWARE"
echo "Baudrate  : default (115200, -b ignored)"
echo "Tool      : $FLASH_TOOL"
echo "----------------------------------------"

# Whole-image / Combo.bin: program from 0x0 as single file
# Do NOT pass --baudrate so tool default is used.
# shellcheck disable=SC2086
$FLASH_TOOL \
  --chipname="$CHIP_LC" \
  --interface=uart \
  --port="$PORT" \
  --firmware="$FIRMWARE" \
  --single \
  --addr=0x0

echo "Flash done."
