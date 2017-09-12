#!/bin/sh

eval $(ssh-agent -s)

ssh-add <(echo $SSH_PRIVATE_KEY)
