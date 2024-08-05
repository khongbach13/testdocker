# Use an official Jenkins image from Docker Hub
FROM jenkins/jenkins:lts

# Install required packages or tools
USER root
RUN apt-get update && apt-get install -y \
    curl \
    git \
    # Add other necessary tools
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Switch back to Jenkins user
USER jenkins

