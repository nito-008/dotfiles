#!/bin/bash

if ! command -v node >/dev/null 2>&1 || ! command -v npm >/dev/null 2>&1; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    nvm install node
fi

npm install -g @openai/codex

curl -fsSL https://claude.ai/install.sh | bash