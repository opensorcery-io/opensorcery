#!/bin/bash
# Automation script used as a workaround for testing `docker-compose build`
# within the `travis` pipeline. From the local environment, users have a `.env`
# file present for the `docker-compose` build to ingest and supply the docker
# containers/django application with the required secrets. However, we can't
# log this via git, as this file contains secrets. So we dynamically generate it
# using the `before_script` travis directive, and source the environmental
# variables from the travis admin keychain.
touch .env
echo "auth0_domain=${auth0_domain}" >> .env
echo "api_identifier=${api_identifier}" >> .env
