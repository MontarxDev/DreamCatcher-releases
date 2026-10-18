#!/usr/bin/env bash
# Sign DreamCatcher release files with the dedicated minisign key.
# Usage: ./sign-release.sh FILE [FILE...]   -> writes FILE.minisig next to each file.
# The secret key and its password stay in /workspace/.dc-signing (box only, never committed).
set -euo pipefail
KEYDIR="${DC_SIGNING_DIR:-/workspace/.dc-signing}"
SECKEY="$KEYDIR/minisign.key"
PASSFILE="$KEYDIR/password"
PUBKEY="$(dirname "$0")/minisign.pub"
[ "$#" -ge 1 ] || { echo "usage: $0 FILE [FILE...]" >&2; exit 2; }
command -v minisign >/dev/null || { echo "minisign not installed" >&2; exit 1; }
[ -r "$SECKEY" ] && [ -r "$PASSFILE" ] || { echo "signing key not found in $KEYDIR" >&2; exit 1; }
for f in "$@"; do
  [ -f "$f" ] || { echo "not a file: $f" >&2; exit 1; }
  name="$(basename "$f")"
  # Password is fed on stdin from the 0600 file; it never appears in argv or output.
  minisign -S -s "$SECKEY" -m "$f" -x "$f.minisig" \
    -t "DreamCatcher release file: $name" < "$PASSFILE" >/dev/null
  minisign -V -q -p "$PUBKEY" -m "$f" -x "$f.minisig"
  echo "signed + verified: $f.minisig"
done
