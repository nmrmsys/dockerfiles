
# Terraformers

Terraform and Terraforming Docker Image

# Install

```
# Setting ~/.aws/credentials,config on the host  
./install.sh [<default-region>]
# Setting ~/.terraformers on the host
```

# Usage

```
cd tf
vi *.tf
../terraform [--version] [--help] <command> [<args>]
../terraforming <command> [<args>]
../terraforming-all <profile> [--no-merge] [<args>]
../aws [options] <command> <subcommand> [<subcommand> ...] [parameters]
../jq [options] <jq filter> [file...]
cd ..
```

# Shell

```
./shell.sh
```

# Uninstall

```
./uninstall.sh
```

# Build

```
./build.sh
```

# Image Repository
Docker Hub: [nmrmsys/terraformers](https://hub.docker.com/r/nmrmsys/terraformers/)

# Licence
[MIT](http://opensource.org/licenses/mit-license.php)

# Author
[nmrmsys](https://github.com/nmrmsys)
