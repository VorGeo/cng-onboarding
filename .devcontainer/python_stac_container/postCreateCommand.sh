# Install pixi
curl -fsSL https://pixi.sh/install.sh | bash

# Install conda and pypi packages with pixi
/home/vscode/.pixi/bin/pixi install

SERVICE_NAME=$(grep '"service":' /workspace/.devcontainer/python_stac_container/devcontainer.json | cut -d'"' -f4)
echo "Container service name from devcontainer.json: $SERVICE_NAME"

CONTAINER_NAME=$(grep '"name":' /workspace/.devcontainer/python_stac_container/devcontainer.json | cut -d'"' -f4)
echo "Container name from devcontainer.json: $CONTAINER_NAME"

# Install a Jupyter kernel for the devcontainer
/home/vscode/.pixi/bin/pixi run python -m ipykernel install --user --name=$SERVICE_NAME --display-name "$CONTAINER_NAME"
