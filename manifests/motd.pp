# === Authors
#
# Jason Edgecombe <jason@rampaginggeek.com>
#
# === Copyright
#
# Copyright 2012 Jason Edgecombe, unless otherwise noted.
#
class vagrant::motd {

  file { '/etc/motd':
    content => "Welcome to your Vagrant-built virtual machine! Managed by Puppet.\n"
  }

}
