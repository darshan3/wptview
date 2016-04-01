#!/bin/bash
set -e # exit with nonzero exit code if anything fails
echo $TRAVIS_PULL_REQUEST
if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then
	exit 0
fi
echo "Pushing to gh-pages.."
git push "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1