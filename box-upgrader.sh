#!/bin/bash

vagrant box list | cut -f 1 -d ' ' | xargs -L 1 vagrant box update --box
echo "All box upgraded..."
vagrant box prune
echo "... old versions are deleted"

