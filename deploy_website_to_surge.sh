#!/usr/bin/env bash
if [type = pull_request && $WEBSITE_CHANGED]
then
  npx surge --project ./build --domain wix-yoshi-${TRAVIS_PULL_REQUEST}.surge.sh;
fi;
