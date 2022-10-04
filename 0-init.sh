#!/usr/bin/env bash
# better safe then sorry and disable push of submodules are out of date
git config push.recurseSubmodules check
# alias to fetch and merge remote submodule updates
git config alias.supdate 'submodule update --remote --merge'

echo "Starting init..."

echo "Validating Git Submodules"
git submodule update --init --recursive
git submodule foreach "git checkout main"

echo "Pulling Helm Dependencies"
git submodule foreach "helm dependency update"
helm dependency update

echo "Completed initialization"
