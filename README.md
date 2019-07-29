# pkg - a packaging tool for NodeJS application

A project to wrap pkg for node into a container


## Why?

This project was made to increase the speed while generating artifacts in a CI/CD environment.
There is already dockerpkg/builder but it was last built 2 years ago.

So i'll also make a example to use this image in Gitlab CI (cause we'r using this the most)

## Gitlab CI

**Attention** To use this image your Gitlab-Runner must be a docker runner.
The Gitlab-CI on https://gitlab.com is per default a docker runner, so you dont have to do anything there.

More to come (first testing if image is working, lel :D)