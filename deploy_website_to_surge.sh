#!/usr/bin/env bash
npx surge --project ./website/build --domain wix-yoshi-${TRAVIS_PULL_REQUEST}.surge.sh;

echo "posting comment about 'https://wix-yoshi-${TRAVIS_PULL_REQUEST}.surge.sh/yoshi'"
#inspired by https://damien.pobel.fr/post/github-api-from-travisci/
curl -H "Authorization: token ${GITHUB_TOKEN}" -X POST \
  -d "{\"body\": \"Deploy preview for Yoshi ready! \
  \n\n \
  https://wix-yoshi-${TRAVIS_PULL_REQUEST}.surge.sh/yoshi \"}" \
  "https://api.github.com/repos/${TRAVIS_REPO_SLUG}/issues/${TRAVIS_PULL_REQUEST}/comments";
