# Jenkins

Built on top of the official [jenkins](https://github.com/jenkinsci/docker) image.

This repository contains a Dockerfile to build a Jenkins server image with a set of preinstalled plugins.

## Preinstalled plugins

The list of plugins that will be preinstalled are listed in the [plugins](./plugins.txt) file.

The relevant extra plugins (that is not in the default list) are:
- [configuration-as-code](https://github.com/jenkinsci/configuration-as-code-plugin/blob/master/README.md), to avoid manual configuration.
- [job-dsl](https://github.com/jenkinsci/job-dsl-plugin), to configure organization folders, and other jobs.
- [kubernetes](https://github.com/jenkinsci/kubernetes-plugin), to configure a cloud to provide the agents that will run the jobs.
- [dark-theme](https://github.com/jenkinsci/dark-theme-plugin), it is here for obvious reasons.
