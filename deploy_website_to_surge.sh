#!/usr/bin/env bash
if [type = pull_request && $WEBSITE_CHANGED]
then
  npx surge --project ./build --domain wix-yoshi-${TRAVIS_PULL_REQUEST}.surge.sh;

  #inspired by https://damien.pobel.fr/post/github-api-from-travisci/
  curl -H "Authorization: token ${GITHUB_TOKEN}" -X POST \
    -d "{\"body\": \"You could check new website at http://wix-yoshi-${TRAVIS_PULL_REQUEST}.surge.sh/yoshi 😉\"}" \
    "https://api.github.com/repos/${TRAVIS_REPO_SLUG}/issues/${TRAVIS_PULL_REQUEST}/comments"

fi;
