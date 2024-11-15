  if [[ "" == "" ]]; then
    IMAGE_TAG="empty"
    echo "OUTPUT=$IMAGE_TAG" >> $GITHUB_ENV
  elif [[ "main.75b2aa34" != "" ]]; then
    IMAGE_TAG="payload"
    echo "OUTPUT=$IMAGE_TAG" >> $GITHUB_ENV
  else
    BRANCH=${GITHUB_REF_NAME}
    VERSION=${GITHUB_SHA::8}
    IMAGE_TAG="${BRANCH}.${VERSION}"
    echo "OUTPUT=$IMAGE_TAG" >> $GITHUB_ENV
  fi