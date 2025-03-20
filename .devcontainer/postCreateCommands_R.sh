# Install pixi
echo "--------------------------------"
echo "curl -fsSL https://pixi.sh/install.sh | bash"
curl -fsSL https://pixi.sh/install.sh | bash

echo "--------------------------------"
echo "$HOME/.pixi/bin/pixi install -v"
$HOME/.pixi/bin/pixi install -v

echo "--------------------------------"
echo "SERVICE_NAME=$SERVICE_NAME"
echo "CONTAINER_NAME=$CONTAINER_NAME"

echo "--------------------------------"
$HOME/.pixi/bin/pixi run R -e "IRkernel::installspec(name = \"$SERVICE_NAME\", displayname = \"$CONTAINER_NAME\")"
