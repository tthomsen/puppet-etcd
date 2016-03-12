# == Class etcd::install
#
# This class is called from etcd for install.
#
class etcd::install {

  package { $::etcd::package_name:
    ensure => present,
  }
}
