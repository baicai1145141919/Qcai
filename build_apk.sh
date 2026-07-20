#!/bin/bash
# Rebuild trimmed APK from decompiled/ and sign with uber-apk-signer
set -e
BASE="C:/Users/32729/WorkBuddy/2026-07-19-00-48-46"
JAVA="$BASE/tools/jre_extracted/jdk-17.0.11+9-jre/bin/java.exe"
APKTOOL="$BASE/tools/apktool.jar"
SIGNER="$BASE/tools/uber-apk-signer.jar"
OUT="$BASE/out"
mkdir -p "$OUT"

echo "[1/3] apktool build decompiled/ -> $OUT/unsigned.apk"
"$JAVA" -jar "$APKTOOL" b "$BASE/decompiled" -o "$OUT/unsigned.apk" --use-aapt2

echo "[2/3] sign with uber-apk-signer"
"$JAVA" -jar "$SIGNER" --apk "$OUT/unsigned.apk" --out "$OUT"

echo "[3/3] done. Signed APK in $OUT"
ls -la "$OUT"
