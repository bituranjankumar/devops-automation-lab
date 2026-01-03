# GitLab CI Poetry Pipeline  

This directory contains a sample **GitLab CI/CD pipeline** for Python projects that use [Poetry](https://python-poetry.org/) for dependency management and packaging. The pipeline is designed to be beginner -friendly while following best practices for caching and stages.  

## 📦 What it does  

- Installs Poetry and your project dependencies  
- Runs your test suite with pytest  
- Builds a distributable package using `poetry build`  

The pipeline runs these steps in separate stages so you can easily extend or customize them.  

## 🛠 Prerequisites  

To use this pipeline you should have:  

- A Python project with a `pyproject.toml` managed by Poetry  
- A test suite (e.g., using `pytest`)  
- A GitLab repository with CI/CD enabled  

Make sure your repository includes a `poetry.lock` file so dependencies are reproducible.  

## 🦾 Pipeline Overview  

The `.gitlab-ci.yml` defines three stages:  

- **install**: upgrades `pip`, installs Poetry, and runs `poetry install` to install your project dependencies. Caches pip and poetry packages to speed up future runs.  
- **test**: runs your test suite using `pytest`. JUnit results are exported to `junit.xml` so GitLab can show test reports.  
- **build**: builds your Python package (wheel and sdist) and stores the artifacts in the `dist/` directory.  

You can extend these stages or add new ones (e.g., for linting, type checking, or publishing to a package index).  

## 🚀 How to use  

1. Copy the `.gitlab-ci.yml` file from this directory into the root of your GitLab repository.  
2. Commit and push the file to your default branch.  
3. GitLab will automatically detect the pipeline and start running the defined stages.  

You can monitor pipeline runs under **CI/CD → Pipelines** in your GitLab project.  

## 🧰 Customization tips  

- Change the `image` at the top of the file to another Python version (e.g., `python:3.11`) if needed.  
- Adjust the `script` sections to suit your test framework (e.g., `pytest -v` or `python -m unittest`).  
- Add or remove stages to match your workflow (e.g., add a deploy stage).  

Feel free to experiment and build on this template as you become more comfortable with GitLab CI/CD and Poetry.  

## 👤 Author  

Created by bituranjankumar as part of the DevOps Automation Lab.
