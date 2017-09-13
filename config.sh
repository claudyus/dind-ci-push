#!/bin/bash

mkdir -p ~/.ssh
if [[ -n "$SSH_PRIVATE_KEY" ]]; then
    echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
    chmod 600 ~/.ssh/id_rsa
else
    echo "ERROR: Missing private key in env"
    exit 1
fi

# set or ignore know_hosts file
if [[ -n "$KNOW_HOSTS_LINE" ]]; then
  echo $KNOW_HOSTS_LINE > ~/.ssh/known_hosts
else
  echo "WARNING: host key checking disabled (NOTE: makes you susceptible to man-in-the-middle attacks)"
  echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
fi
