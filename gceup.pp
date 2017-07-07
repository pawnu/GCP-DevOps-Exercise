gce_instance { 'puppet-jenkins':
  ensure                => present,
  description           => 'Agent',
  machine_type          => 'f1-micro',
  zone                  => 'europe-west2-a',
  network               => 'default',
  tags                  => ['puppet', 'agent'],
  image                 => 'projects/ubuntu-os-cloud/global/images/ubuntu-1404-trusty-v20170703',
  puppet_manifest       => "jenkins.pp",
  startup_script        => 'startupagent.sh',
}
gce_instance { 'puppet-sonarcube':
  ensure                => present,
  description           => 'Agent',
  machine_type          => 'f1-micro',
  zone                  => 'europe-west2-a',
  network               => 'default',
  tags                  => ['puppet', 'agent'],
  image                 => 'projects/ubuntu-os-cloud/global/images/ubuntu-1404-trusty-v20170703',
  puppet_manifest       => "sonarcube.pp",
  startup_script        => 'startupagent.sh',
}

gce_instance { 'puppet-splunk':
  ensure                => present,
  description           => 'Agent',
  machine_type          => 'f1-micro',
  zone                  => 'europe-west2-a',
  network               => 'default',
  tags                  => ['puppet', 'agent'],
  image                 => 'projects/ubuntu-os-cloud/global/images/ubuntu-1404-trusty-v20170703',
  puppet_manifest       => "splunk.pp",
  startup_script        => 'startupagent.sh',
}

gce_instance { 'puppet-webserver':
  ensure                => present,
  description           => 'Agent',
  machine_type          => 'f1-micro',
  zone                  => 'europe-west2-a',
  network               => 'default',
  tags                  => ['puppet', 'agent'],
  image                 => 'projects/ubuntu-os-cloud/global/images/ubuntu-1404-trusty-v20170703',
  puppet_manifest       => "webserver.pp",
  startup_script        => 'startupagent.sh',
}

gce_instance { 'puppet-nexus':
  ensure                => present,
  description           => 'Agent',
  machine_type          => 'f1-micro',
  zone                  => 'europe-west2-a',
  network               => 'default',
  tags                  => ['puppet', 'agent'],
  image                 => 'projects/ubuntu-os-cloud/global/images/ubuntu-1404-trusty-v20170703',
  puppet_manifest       => "nexus.pp",
  startup_script        => 'startupagent.sh',
}

