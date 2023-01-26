#!/bin/sh
ROOT_DIR="/app/react"
APP_DIR="$ROOT_DIR/react-app"

if [ ! -e $APP_DIR ]; then
    cd $ROOT_DIR
    echo "[START] create react app..."
    echo "$ROOT_DIR"
    npm install -g npm@latest
    npm install -g create-react-app
    npx create-react-app react-app --template typescript
    echo "[END] create react app"
fi

cd $APP_DIR
echo "[START] yarn start..."
yarn start

exec "$@"