#!/bin/bash
set -e

source "buildScript/init/env.sh"
ENV_NB4A=1
source "buildScript/lib/core/get_source_env.sh"
pushd ..

####

if [ ! -d "sing-box" ]; then
  git clone --no-checkout https://github.com/YeJianbo/sing-box.git
fi
pushd sing-box
git remote set-url origin https://github.com/YeJianbo/sing-box.git
git checkout "$COMMIT_SING_BOX"
git reset --hard "$COMMIT_SING_BOX"
popd

####

if [ ! -d "libneko" ]; then
  git clone --no-checkout https://github.com/MatsuriDayo/libneko.git
fi
pushd libneko
git checkout "$COMMIT_LIBNEKO"
git reset --hard "$COMMIT_LIBNEKO"
popd

####

popd
