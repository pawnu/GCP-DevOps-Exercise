#!/bin/bash

project=$(gcloud config list --format 'value(core.project)' 2>/dev/null)

#Create device.conf file at ~/.puppet/ directory, or if using sudo
cat > /etc/puppet/device.conf << EOF
[my_project]
  type gce
  url [/dev/null]:${project}
EOF

