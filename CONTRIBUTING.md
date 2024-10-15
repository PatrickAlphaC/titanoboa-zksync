# Contributing

- [Contributing](#contributing)
- [Getting Started](#getting-started)
  - [Requirements](#requirements)
  - [OS Requirements](#os-requirements)
  - [Local development setup](#local-development-setup)
- [Testing](#testing)


# Getting Started

## Requirements

You must have the following installed to proceed with contributing to this project. 

- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - You'll know you did it right if you can run `git --version` and you see a response like `git version x.x.x`
- [python](https://www.python.org/downloads/)
  - You'll know you did it right if you can run `python --version` and you see a response like `Python x.x.x`
- [uv](https://docs.astral.sh/uv/getting-started/installation/)
  - You'll know you did it right if you can run `uv --version` and you see a response like `uv 0.4.7 (a178051e8 2024-09-07)`
- [era_test_node](https://github.com/matter-labs/era-test-node)
  - You'll know you did it right if you can run `era_test_node --version` and you see a response like `era_test_node 0.1.0 (a178051e8 2024-09-07)`
- [era-compiler-vyper](https://github.com/matter-labs/era-compiler-vyper)
  - You'll know you did it right if you can run `zkvyper --version` and you see a response like `Vyper compiler for ZKsync v1.5.4 (LLVM build f9f732c8ebdb88fb8cd4528482a00e4f65bcb8b7)`

## OS Requirements

- Linux and/or MacOS
  - This project is not tested on Windows, so it is recommended to use a Linux or MacOS machine, or use a tool like [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) for windows users.


## Local development setup

Follow the steps to clone the repo for you to make changes to this project.

1. Clone the repo

```bash
git clone https://github.com/<THIS_REPO> # Replace <THIS_REPO> with the actual repo URL
cd titanoboa-zksync
```

2. Sync dependencies

*This repo uses uv to manage python dependencies and version. So you don't have to deal with virtual environments (much)*

```bash
uv sync --all-extras
```

3. Create a new branch

```bash
git checkout -b <branch_name>
```

And start making your changes! Once you're done, you can commit your changes and push them to your forked repo.

```bash
git add .
git commit -m 'your commit message'
git push <your_forked_github>
```

# Testing

To run all the tests, you'll optionally need the following environment variables. If you don't set them, defaults will be used.

1. `ZKSYNC_SEPOLIA_RPC_URL` - An RPC for the sepolia chain
2. `ZKSYNC_SEPOLIA_EXPLORER_URL` - An explorer URL for the sepolia chain$$

```bash
make test
```