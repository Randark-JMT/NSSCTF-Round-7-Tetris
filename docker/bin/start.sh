#!/bin/sh

cd /app
sed -i "s@aabbccflagccbbaa@$FLAG@g" ./src/lib.rs

wasm-pack build --mode no-install --out-dir examples/pkg --target web

# Deploy environment
cd ./examples
python3 -m http.server 8080
