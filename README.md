jenkins-pipeline-test
=====
this repo is used for jenkins pipeline test, it uses docker to host 3 different services
- gitlab
- jenkins
- app

the goal is to create a jenkins pipeline that can automatically do these things:
1. trigger builds via gitlab webhook when doing git push
2. release a docker image and update the current app