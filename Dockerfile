FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y ruby ruby-dev gcc g++ make vim zlib1g-dev
RUN gem install bundler jekyll jekyll-feed jekyll-seo-tag:2.5.0 minima:2.5.0 jekyll-remote-theme alembic-jekyll-theme

# drop back to the regular jenkins user - good practice
USER jenkins

