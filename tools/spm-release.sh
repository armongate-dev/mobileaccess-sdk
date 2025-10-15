#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   VERSION="1.2.3" \
#   XCFRAMEWORK_DIR="distribution/ios/ArmongateMobileAccessSDK.xcframework" \
#   ./tools/spm-release.sh
#
# Requires: swift toolchain available (for compute-checksum)

: "${VERSION:?VERSION is required}"
: "${XCFRAMEWORK_DIR:?XCFRAMEWORK_DIR is required}"

WORKDIR="$(pwd)"
TMP_DIR="$(mktemp -d)"
ZIP_NAME="ArmongateMobileAccessSDK-${VERSION}.xcframework.zip"
ZIP_PATH="${WORKDIR}/Releases/${ZIP_NAME}"

cleanup() { rm -rf "${TMP_DIR}"; }
trap cleanup EXIT

if [ ! -d "${XCFRAMEWORK_DIR}" ]; then
  echo "ERROR: xcframework not found at ${XCFRAMEWORK_DIR}"
  exit 1
fi

# Create Releases directory
mkdir -p Releases

# Create zip
cd "$(dirname "${XCFRAMEWORK_DIR}")"
zip -r -X -y "${ZIP_PATH}" "$(basename "${XCFRAMEWORK_DIR}")"
cd "${WORKDIR}"

# Compute checksum (avoid Swift SPM to prevent dependency resolution)
if command -v shasum >/dev/null 2>&1; then
    CHECKSUM="$(shasum -a 256 "${ZIP_PATH}" | cut -d' ' -f1)"
elif command -v sha256sum >/dev/null 2>&1; then
    CHECKSUM="$(sha256sum "${ZIP_PATH}" | cut -d' ' -f1)"
else
    echo "❌ ERROR: Neither shasum nor sha256sum found"
    exit 1
fi
echo "Checksum: ${CHECKSUM}"

# Use Azure DevOps Artifacts Universal Package URL (direct download)
FEED_NAME="armongate-sdk-feed"
PACKAGE_NAME="armongate-mobileaccess-sdk"

# The final URL will be accessible via Azure Artifacts API
ZIP_URL="https://pkgs.dev.azure.com/armon/armongate-distribution/_apis/packaging/feeds/${FEED_NAME}/universal/packages/${PACKAGE_NAME}/versions/${VERSION}/content"

echo "Package will be available at: ${ZIP_URL}"

cat > Package.swift <<EOF
// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ArmongateMobileAccessSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ArmongateMobileAccessSDK",
            targets: ["ArmongateMobileAccessSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ArmongateMobileAccessSDK",
            url: "${ZIP_URL}",
            checksum: "${CHECKSUM}"
        )
    ]
)
EOF

git add Releases Package.swift
git commit -m "release: v${VERSION} ArmongateMobileAccessSDK SPM update"
git tag "v${VERSION}"
git push origin HEAD:master
git push origin "v${VERSION}"

echo "SPM release completed for v${VERSION}"