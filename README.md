# jenkins-jekyll
Builds a Docker Jenkins image containing the runtime to do Jekyll builds.

To run this image:
#> docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home  dscarf/jenkins-jekyll:latest

