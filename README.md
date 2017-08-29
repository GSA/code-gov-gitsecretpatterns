# code-gov-gitsecretpatterns

Repository for Code.gov git-secrets patterns and bootstrap script.

# git-secrets

> Prevents you from committing passwords and other sensitive information to a git repository.

[More](https://github.com/awslabs/git-secrets)

# What's in here?

* `code-gov.patterns`: File with pattern to search for with git-secrets.
* `bootstrap-gitsecrets.sh`: script to help you bootstrap your usage of git-secrets. It will add all patterns to your global git config.

# Installing

1. Clone repository: `git clone git@github.com:presidential-innovation-fellows/code-gov-gitsecretpatterns.git`
2. Make sure that `bootstrap-gitsecrets.sh` is executable. If not make it so: `chmod +x bootstrap-gitsecrets.sh`
3. Execute `bootstrap-gitsecrets.sh`: `./bootstrap-gitsecrets.sh`
    * This will create `.git-secrets` directory in your home folder.
    * It will also copy `code-gov.patterns` to `~/.git-secrets`

# Test it out

Go to the root directory of a local repository and test your patterns. You can execute `git secrets --scan-history` or `git secrets --scan <file>` to check if any of the patterns can be found.

## WARNING

Depending on the size of the repo's history `git secrets --scan-history` can take some time.
