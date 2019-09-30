---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "ansible-playbook"
summary: |
  Docker image to run ansible-playbook (or ansible-vault).
authors: [ sergio ]
tags: [ ansible, docker ]
categories: [ source ]
date: 2019-02-20T00:00:00+02:00

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
#image:
# caption: ""
# focal_point: ""
# preview_only: false

# Links
url_code: https://github.com/slopezz/ansible-playbook
url_pdf: ""
url_slides: ""
url_video: ""
links:
- name: Github
  url: https://github.com/slopezz/ansible-playbook
  icon_pack: fab
  icon: github

# Slides (optional).
slides: ""
---

* Executes ansible-playbook (and ansible-vault) command with an specific ansible version inside a Docker container, so you can guarantee that anybody using an specific version will have the same result.

* It can be integrated into a CI/CD pipeline with all dependancies resolved.

* In addition, it has pip openshift package included, so it is possible to run ansible k8s module to run ansible playbooks with kubernetes or openshift clusters as targets.
