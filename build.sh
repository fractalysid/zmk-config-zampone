#!/usr/bin/env bash
# Compila il firmware ZMK per Demetra v2 con il layout Zampone (left + right).
set -euo pipefail
LAYOUT="Zampone"
KB_BUILD="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../kb-build" && pwd)"

"$KB_BUILD/bin/kb-build.sh" --hw zmk-keyboard-demetra_v2 "$LAYOUT" demetra_v2_left
"$KB_BUILD/bin/kb-build.sh" --hw zmk-keyboard-demetra_v2 "$LAYOUT" demetra_v2_right
