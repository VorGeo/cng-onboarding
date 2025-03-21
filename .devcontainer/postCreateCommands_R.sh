# Install pixi
echo "--------------------------------"
echo "curl -fsSL https://pixi.sh/install.sh | bash"
curl -fsSL https://pixi.sh/install.sh | bash

echo "--------------------------------"
echo "$HOME/.pixi/bin/pixi install -v"
$HOME/.pixi/bin/pixi install -v

# echo "--------------------------------"
# $HOME/.pixi/bin/pixi run R -e "install.packages(\"units\", repos = \"https://cloud.r-project.org/\")"
echo "--------------------------------"
$HOME/.pixi/bin/pixi run R -e "install.packages(\"IRkernel\", repos = \"https://cloud.r-project.org/\")"
echo "--------------------------------"
$HOME/.pixi/bin/pixi run R -e "IRkernel::installspec(name = \"$SERVICE_NAME\", displayname = \"$CONTAINER_NAME\")"

echo "--------------------------------"
$HOME/.pixi/bin/pixi run jupyter kernelspec list
