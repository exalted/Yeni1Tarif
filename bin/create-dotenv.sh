#!/usr/bin/env bash
set -e

if [[ -f Config/Dotenv-Yeni1Tarif.xcconfig ]]; then
    exit 0
fi

cp Config/Dotenv-Yeni1Tarif.xcconfig-template Config/Dotenv-Yeni1Tarif.xcconfig
