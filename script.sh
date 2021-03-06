#!/bin/bash

# Service HUB
echo "HUB"
cp -R src/carriers-hub .
mv carriers-hub service-hub
cp .env.hub service-hub/.env
cp Dockerfile service-hub/
cd service-hub
sed -i 'EXPOSE 3000' Dockerfile
yarn
yarn run build
cd ../

# Service Correios
echo "Correios"
cp -R src/carriers-calculate .
mv carriers-calculate service-correios
cp .env.correios service-correios/.env
cp Dockerfile service-correios/
cd service-correios
sed -i 'EXPOSE 3001' Dockerfile
yarn
yarn run build
cd ../

# Service Jadlog
echo "Jadlog"
cp -R src/carriers-calculate .
mv carriers-calculate service-jadlog
cp .env.jadlog service-jadlog/.env
cp Dockerfile service-jadlog/
cd service-jadlog
sed -i 'EXPOSE 3002' Dockerfile
yarn
yarn run build
cd ../

# Service Azul Cargo
echo "Azul Cargo"
cp -R src/carriers-calculate .
mv carriers-calculate service-azul-cargo
cp .env.azul-cargo service-azul-cargo/.env
cp Dockerfile service-azul-cargo/
cd service-azul-cargo
sed -i 'EXPOSE 3003' Dockerfile
yarn
yarn run build
cd ../