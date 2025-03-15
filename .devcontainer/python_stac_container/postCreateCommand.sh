# Install pixi
curl -fsSL https://pixi.sh/install.sh | bash

# Install conda and pypi packages with pixi
/home/vscode/.pixi/bin/pixi install

# Install a Jupyter kernel for the devcontainer
/home/vscode/.pixi/bin/pixi run python -m ipykernel install --user --name=python-stac-kernel --display-name 'Python STAC Kernel'
