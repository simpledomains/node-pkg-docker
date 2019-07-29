# pkg - a packaging tool for NodeJS application

A project to wrap pkg for node into a container


## Why?

This project was made to increase the speed while generating artifacts in a CI/CD environment.
There is already dockerpkg/builder but it was last built 2 years ago.

So i'll also make a example to use this image in Gitlab CI (cause we'r using this the most)

## Gitlab CI

**Attention** To use this image your Gitlab-Runner must be a docker runner.
The Gitlab-CI on https://gitlab.com is per default a docker runner, so you dont have to do anything there.

You need to modify your `package.json` a bit and add the following:

```json
   [...]
   "bin": "path/to/your/main/javascript.js"
```

After this you'r ready to go (see https://github.com/zeit/pkg for more information).


Now you can simply add the `.gitlab-ci.yml` with the following (modify to fit your needs):

```yml
variables:
  NODE_ENV: production
  PKG_CACHE_PATH: .cache/

cache:
  paths:
    - node_modules/
    - .cache/

stages:
  - package

image: node:latest

pkg:
  stage: package
  image: virtuellewolke/node-pkg:latest
  script:
    - npm install
    - pkg .
  artifacts:
    paths:
      - project-name-linux
      - project-name-macos
      - project-name-win.exe
    expire_in: 30 days
```