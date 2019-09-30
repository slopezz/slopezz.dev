---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "ansible-manage-k8s-apps"
summary: |
  Application Lifecycle Management of k8s/openshift apps (operators) using Ansible (code on GitHub, even secrets), Jenkins intregration.
authors: [ sergio ]
tags: [ ansible, docker, kubernetes, openshift, aws, python, cicd ]
categories: [ source ]
date: 2019-08-10T00:00:00+02:00

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
#image:
# caption: ""
# focal_point: ""
# preview_only: false

# Links
url_code: https://github.com/slopezz/ansible-manage-k8s-apps
url_pdf: ""
url_slides: ""
url_video: ""
links:
- name: Github
  url: https://github.com/slopezz/ansible-manage-k8s-apps
  icon_pack: fab
  icon: github

# Slides (optional).
slides: ""
---

Application Lifecycle Management of k8s/openshift apps (operators) with Ansible:

* Each cluster is a playbook that has N applications (test-ocp-cluster.yml, dev-ocp-cluster.yml, staging-ocp-cluster.yml...).
* Each application is managed via ansible roles (which configures ansible-operators mainly, and uses jinja templates for the yaml files to have differences between the same app among different clusters).
* Each application (ansible role) consists on:
  - Namespace object management (only if required). It can be specific name, description, node type (type=eip...).
  - Operator objects management (creation of CRD, service_acount, role, role_binding, operator objects).
  - CR objects management of specific operator (for every operator it can me specified N CR objects inside an ansible list).
  - Secret object management (only if required).
  - ConfigMap object management (only if required).
* Each OCP USER/URL for every cluster is stored on hosts_vars/$ENVIRONMENT-ocp-cluster/vars.yml (for example on hosts_vars/test-ocp-cluster/vars.yml).
* Each application variable for every cluster is stored hosts_vars/$ENVIRONMENT-ocp-cluster/$APPLICATION-vars.yml (for example on hosts_vars/test-ocp-cluster/hello-world-vars.yml).
* Each application secret variables (and OCP password) for every cluster is stored on hosts_vars/$ENVIRONMENT-ocp-cluster/vault.yml using encrypted ansible-vault (for example on hosts_vars/test-ocp-cluster/vault.yml)
* ansible-playbook and ansible-vault are executed inside a Docker container
* For every cluster, each ansible-vault encryption key is retrieved dynamically from AWS Secret Manager service using a Docker cotainer
* GitFlow to deploy application can be integrated with Jenkins
