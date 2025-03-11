# Install pixi
curl -fsSL https://pixi.sh/install.sh | bash

# Install conda and pypi packages with pixi
/home/vscode/.pixi/bin/pixi install

# # Display information on the pixi environment
# /home/vscode/.pixi/bin/pixi info

# Install a Jupyter kernel for the devcontainer
/home/vscode/.pixi/bin/pixi run python -m ipykernel install --user --name=tutorial-1-kernel --display-name 'Tutorial 1 Kernel'
