# Borrow the leg work done by the PrairieLearn project
FROM prairielearn/grader-python:latest

# Set a new label for the image
LABEL org.label-schema.license="AGPL-3.0" \
      org.label-schema.vcs-url="stat-prairielearn-uiuc/grader-adv-python" \
      org.label-schema.vendor="PrairieLearn Autograder for Python with Extended Feedback" \
      maintainer="James Joseph Balamuta <balamut2@illinois.edu>"

# Add layer for Deep Learning packages
COPY install.sh /

# Run the Deep Learning package requirements
RUN /bin/bash /install.sh
