gce_instance { 'puppet-jenkins-demo':
  ensure                => present,
  description           => 'Agent',
  machine_type          => 'f1-micro',
  zone                  => 'europe-west2-a',
  network               => 'default',
  tags                  => ['puppet', 'agent'],
  image                 => 'projects/ubuntu-os-cloud/global/images/ubuntu-1404-trusty-v20170703',
  startup_script        => 'jenkins.sh',
}
gce_instance { 'puppet-sonarqube-demo':
  ensure                => present,
  description           => 'Agent',
  machine_type          => 'f1-micro',
  zone                  => 'europe-west2-a',
  network               => 'default',
  tags                  => ['puppet', 'agent'],
  image                 => 'projects/ubuntu-os-cloud/global/images/ubuntu-1404-trusty-v20170703',
  startup_script        => 'sonarqube.sh',
}

gce_instance { 'puppet-splunk-demo':
  ensure                => present,
  description           => 'Agent',
  machine_type          => 'f1-micro',
  zone                  => 'europe-west2-a',
  network               => 'default',
  tags                  => ['puppet', 'agent'],
  image                 => 'projects/ubuntu-os-cloud/global/images/ubuntu-1404-trusty-v20170703',
  startup_script        => 'splunk.sh',
}

gce_instance { 'puppet-tomcat-demo':
  ensure                => present,
  description           => 'Agent',
  machine_type          => 'f1-micro',
  zone                  => 'europe-west2-a',
  network               => 'default',
  tags                  => ['puppet', 'agent'],
  image                 => 'projects/ubuntu-os-cloud/global/images/ubuntu-1404-trusty-v20170703',
  startup_script        => 'tomcat.sh',
}

gce_instance { 'puppet-nexus-demo':
  ensure                => present,
  description           => 'Agent',
  machine_type          => 'f1-micro',
  zone                  => 'europe-west2-a',
  network               => 'default',
  tags                  => ['puppet', 'agent'],
  image                 => 'projects/ubuntu-os-cloud/global/images/ubuntu-1404-trusty-v20170703',
  startup_script        => 'nexus.sh',
}
