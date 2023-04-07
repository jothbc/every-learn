IF NOT EXIST node_modules (
    npm install -g yarn
    yarn
)
node dist/index.js
