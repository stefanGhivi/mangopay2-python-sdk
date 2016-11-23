if [ "$TRAVIS_REPO_SLUG" == "stefanGhivi/mangopay2-python-sdk" ] && [ "$TRAVIS_PULL_REQUEST" == "false" ] && [ "$TRAVIS_BRANCH" == "release" ]; then

  echo -e "Starting publish to PypiTest...\n"

  python setup.py register -r pypitest
  python setup.py sdist upload -r pypitest

fi