# This is a template directory to start a new python project

## Delete current git directory and initialize a new one
`rm -r .git`
`git init`

## Create a new virtual environment and activate it
`python3 -m venv ~/.venv`
`source ~/.venv/bin/activate`
`which python3`

## Install dependencies and check everything is working fine
`make all`

## Build the container
`docker build -t python-template .`

## Run the container
`docker run -it python-template`
