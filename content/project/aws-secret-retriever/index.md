---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "aws-secret-retriever"
summary: |
  Docker image to put/get secrets from AWS Secrets Manager service using python.
authors: [ sergio ]
tags: [ aws, docker, python ]
categories: [ source ]
date: 2019-08-09T00:00:00+02:00

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
#image:
# caption: ""
# focal_point: ""
# preview_only: false

# Links
url_code: https://github.com/slopezz/aws-secret-retriever
url_pdf: ""
url_slides: ""
url_video: ""
links:
- name: Github
  url: https://github.com/slopezz/aws-secret-retriever
  icon_pack: fab
  icon: github

# Slides (optional).
slides: ""
---

* The aim of this docker image is to be able to create secrets on AWS Secrets Manager Service and retrieve its value, so this container execution can be integrated into any CICD to safely store secrets on a Cloud service without having to store secrets on a Github Repository

* It uses ENV VARS `AWS_SECRET_ACCESS_KEY` and `AWS_ACCESS_KEY_ID`, so you need to have aws-cli configured with valid credentials or at least to set these ENV VARS
