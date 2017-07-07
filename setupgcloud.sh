#!/bin/bash

project=$(gcloud config list --format 'value(core.project)' 2>/dev/null)

#Create device.conf file at ~/.puppet/ directory
cat > ~/.puppet/device.conf << EOF
[my_project]
  type gce
  url [/dev/null]:${project}
EOF

