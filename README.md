# Overview

This repository contains code for creating a website of tutorials about Cloud-Native Geospatial (CNG) technologies.

# Interacting with the tutorials

## Viewing

The tutorials are hosted as static webpages on the website: [vorgeo.github.io/cng-onboarding/](https://vorgeo.github.io/cng-onboarding/)
To browse through the available tutorials, use the navigation menu on the left side.

## Executing the Code

### Local Execution (with Pixi)

Requirements:

- Local install of [git](https://git-scm.com/)
- Local install of [pixi](https://pixi.sh/)

Steps:

1. Clone the repo:  `git clone https://github.com/VorGeo/cng-onboarding.git`
2. Navigate to a tutorial directory. For example:  `cd tutorials/stac/python/python-read-stac/`
3. Run the start task to start up JupyterLab:  `pixi run start`
    - This will install the tutorial's code dependencies, start a JupyterLab server, and open up the tutorial in a browser window.


### Local Execution (with Dev Containers)

Requirements:

- Local install of [git](https://git-scm.com/)
- Local install of [pixi](https://pixi.sh/)
- Local install of [VS Code](https://code.visualstudio.com/) with the following extensions: [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers), [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)

Steps:

1. Clone the repo:  `git clone https://github.com/VorGeo/cng-onboarding.git`
2. Open the cloned repo in VS Code.
3. Open the command palette (`Ctrl+Shift+P` or `Cmd+Shift+P` on Mac) and select "Dev Containers: Rebuild and Reopen in Container".
    - Select the Container for the tutorial you want to run.
4. Once the Container is built, you can open up the notebook (index.ipynb) from the Explorer menu.

### Cloud Execution (with GitHub Codespaces)

Requirements:

- A GitHub account

Steps:

1. Within the website (https://vorgeo.github.io/cng-onboarding/), open one of the tutorial pages.
2. Click on the 'Open in GitHub Codespaces' button.
3. In the "Create codespace" page, modify the selection options as needed and then click "Create codespace".
4. A new Codespace will be started. It can take up to 5 minutes for the codespace to be configured, at which point you will see the message "Finished configuring codespace." in the terminal tab.
5. Once the codespace is ready, you can interact with the tutorial in the same way as you would in a local environment. Open up the notebook (index.ipynb) and start executing the cells.
    - You may need to specify the kernel to use for the notebook. To do this, click on the kernel name in the top right corner of the notebook and select the default kernel (e.g., `.pixi/envs/default/bin/python`).

## Contributing

*[TODO... Describe how to contribute changes to the tutorials. Describe the steps for creating a new tutorial.]*


# Colophon

The website makes use of several technologies, including:

| Technology | Description |
| ---------- | ----------- |
| [Quarto](https://quarto.org/) | Quarto is used to generate a static HTML website. Quarto configuration is contained within the `/_quarto.yml` file, and in a raw cell at the start of each tutorial notebook. |
| [Pixi](https://pixi.sh/) | Pixi is used for package management, and is part of the conda ecosystem. Each tutorial defines its own code environment configuration in a `pyproject.toml` (for Python tutorials) or `pixi.toml` (for non-Python tutorials) file. Pixi solves for an environment that honors the configuration and stores the result in a [pixi.lock](https://pixi.sh/latest/features/lockfile/) file. |
| [GitHub Actions](https://github.com/features/actions) | GitHub Actions are used for continuous integration and deployment. Changes that are commited to main branch trigger rebuilding of the static website. Configuration of the actions can be found in the `.github/workflows/` folder. |
| [GitHub Pages](https://pages.github.com/) | GitHub Pages is used to host the website. |
| [Development Containers](https://containers.dev/) | Dev Containers define a full-feature development environment that can be run either locally or in the cloud. Configuration of the dev container can be found in the `.devcontainer/` folder. |
| [GitHub Codespaces](https://github.com/features/codespaces) | *(Optional)* GitHub Codespaces can be used for cloud-based development.
