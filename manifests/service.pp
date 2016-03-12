# == Class etcd::service
#
# This class is meant to be called from etcd.
# It ensure the service is running.
#
class etcd::service {

  service { $::etcd::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
