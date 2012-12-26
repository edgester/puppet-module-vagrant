# === Authors
#
# Jason Edgecombe <jason@rampaginggeek.com>
#
# === Copyright
#
# Copyright 2012 Jason Edgecombe, unless otherwise noted.
#
class vagrant::package_cache {

  file { "/vagrant/cache/apt":
    ensure => "directory",
    owner  => 'vagrant',
    group  => 'vagrant',
    mode   => 0775,
  }
  
  file { "/vagrant/cache/apt/archives":
    ensure => "directory",
    owner  => 'vagrant',
    group  => 'vagrant',
    mode   => 0775,
  }
  
  # cache apt downloads across VM creations
  file { '/var/cache/apt':
    ensure => 'link',
    target => '/vagrant/cache/apt',
    force  => true,
  }  
}
