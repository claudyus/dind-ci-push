dind-ci-push
==============

A docker image that can be used to (git) push code from docker-in-docker

Who to use
^^^^^^^^^^^^^^
You can use this image to push your code from a CI system to a ssh endpoint.

Here some example, assuming gitlab-ci::

 deploy_stage:
   image: claudyus/dind-ci-push
   script:
     - /ssh/config.sh   # run the config script provided by docker image
     - git push -f <some_git_remote>  #  smooth deploy


The configuration script will use the following env variables::

 * SSH_PRIVATE_KEY: The private ssh key to use
