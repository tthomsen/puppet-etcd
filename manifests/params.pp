# == Class etcd::params
#
# This class is meant to be called from etcd.
# It sets variables according to platform.
#
class etcd::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'etcd'
      $service_name = 'etcd'
    }
    'RedHat', 'Amazon': {
      $package_name = 'etcd'
      $service_name = 'etcd'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
