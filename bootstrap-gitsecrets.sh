#!/bin/sh

set -e

command -v git >/dev/null 2>&1 || { printf >&2 "I require git but it's not installed.\nPlease take a look at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git on how to install it.\nAborting."; exit 1; }
command -v git-secrets >/dev/null 2>&1 || { printf >&2 "I require git-secrets but it's not installed.\nPlease take a look at https://github.com/awslabs/git-secrets#git-secrets on how to install it.\nAborting."; exit 1; }

if [ ! -d ~/.git-secrets ]; then
    mkdir -p ~/.git-secrets
fi

if [ ! -e code-gov.patterns ]; then
    printf >&2 "code-gov.patterns file not found. Aborting."; exit 1;
fi

cp code-gov.patterns ~/.git-secrets/

git-secrets --add-provider --global -- cat ~/.git-secrets/code-gov.patterns