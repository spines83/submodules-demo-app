# Usage ./build.sh ENV
# git clone git@github.com:spines83/submodules-demo-app.git --recurse-submodules
git pull && git submodule update --remote

ENV=$1 

ytt -f base \
    -f env/$ENV \
    -f shared/env/$ENV