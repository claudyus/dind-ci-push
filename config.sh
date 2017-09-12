#!/bin/bash

eval $(ssh-agent -s)

ssh-add <(echo $SSH_PRIVATE_KEY)

# set or ignore know_hosts file
mkdir -p ~/.ssh
if [[ -n "$KNOW_HOSTS_LINE" ]]; then
  echo $KNOW_HOSTS_LINE > ~/.ssh/known_hosts
else
  echo "WARNING: host key checking disabled (NOTE: makes you susceptible to man-in-the-middle attacks)"
  echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
fi
