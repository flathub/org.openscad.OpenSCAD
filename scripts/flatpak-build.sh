#!/usr/bin/env bash

JOBS=2
BRANCH=test
APP=org.openscad.OpenSCAD
STATE_DIR="--state-dir=${HOME}/.cache/flatpak-openscad-build/"

rm -f "${APP}.flatpak"
rm -rf _build ; mkdir _build
#rm -rf _repo ; mkdir _repo

#FLAGS="--disable-download --disable-updates --keep-build-dirs"
FLAGS="--disable-updates --keep-build-dirs"

#nice flatpak-builder "${STATE_DIR}" --ccache --force-clean $FLAGS _build "${APP}.yaml" --repo=_repo "--default-branch=${BRANCH}"
nice flatpak-builder --install --user "${STATE_DIR}" --ccache --jobs="${JOBS}" $FLAGS _build "${APP}.yaml" --repo=_repo "--default-branch=${BRANCH}"
nice flatpak build-bundle _repo "${APP}.flatpak" "${APP}" "${BRANCH}"
