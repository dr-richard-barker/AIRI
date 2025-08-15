FROM gitpod/workspace-full

# Install R and Shiny
USER root
RUN apt-get update && \
    apt-get install -y r-base r-base-dev && \
    R -e "install.packages('shiny', repos='https://cran.rstudio.com/')"

# Install gitbook-cli
USER gitpod
RUN npm install -g gitbook-cli

# Command to run on workspace start
CMD ["/bin/bash"]
