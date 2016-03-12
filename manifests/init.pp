# Class: etcd
# ===========================
#
# Full description of class etcd here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class etcd (
  $package_name = $::etcd::params::package_name,
  $service_name = $::etcd::params::service_name,
) inherits ::etcd::params {

  # validate parameters here

  class { '::etcd::install': } ->
  class { '::etcd::config': } ~>
  class { '::etcd::service': } ->
  Class['::etcd']
}
