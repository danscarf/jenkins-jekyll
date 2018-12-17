FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y ruby ruby-dev gcc g++ make
RUN gem install bundler jekyll
# drop back to the regular jenkins user - good practice
USER jenkins