# GitLab CI Basic Example  
This folder contains a simple GitLab CI pipeline definition using a `.gitlab-ci.yml` file.  

The pipeline includes:  
- A `stages` definition with `build` and `test` stages.  
- A `build_job` that uses a Python Docker image to install dependencies and package the application.  
- A `test_job` that runs after build and executes unit tests.  
- An example `.gitlab-ci.yml` file located in this directory, which you can adapt for your own projects.  

The example demonstrates how to:  
- Use GitLab CI to automate your builds and tests when you push to the repository.  
- Specify multiple stages and jobs.  
- Use Docker images to run jobs in consistent environments.
