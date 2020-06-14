#!/usr/bin/env bash

set -o errexit  # stop on error
set -o pipefail # stop on stupid 

# DEBUGGING:
# set -o xtrace 

: ${blog_title:="tregeagle v9.4"}
: ${default_author:="Ruben Hillier"}
: ${base_url:=""}

configureAssets () {  
mkdir -p contents/assets
cp -r contents/assets publish/
}
