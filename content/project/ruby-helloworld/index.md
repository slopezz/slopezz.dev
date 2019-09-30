---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "ruby-helloworld"
summary: |
  Simple hello-world ruby app connecting to Redis on Kubernetes integrated with TravisCI.
authors: [ sergio ]
tags: [ kubernetes, docker, ruby, cicd ]
categories: [ source ]
date: 2019-07-22T00:00:00+02:00

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
#image:
# caption: ""
# focal_point: ""
# preview_only: false

# Links
url_code: https://github.com/slopezz/ruby-helloworld
url_pdf: ""
url_slides: ""
url_video: ""
links:
- name: Github
  url: https://github.com/slopezz/ruby-helloworld
  icon_pack: fab
  icon: github

# Slides (optional).
slides: ""
---

The application is running on a Google Cloud Kubernetes Cluster. It consist on:

 * A K8s StatefulSet with a single redis instance (replicas = 1).
 * A K8s Deployment with a simple ruby application connecting to a Redis server (redis.ping) using ENV variables (replicas = 2).

In order to update the application message at hello-world.rb, you need to create a branch and do a PR to master (protected branch).

Once a PR is accepted and merged into master protected branch, a Travis CI is executed, building a new docker image, pushing it to private docker registry on GCP, and performing a kubernetes rolling update of ruby-helloworld deployment.
