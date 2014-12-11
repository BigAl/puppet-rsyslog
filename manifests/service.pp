# == Class: rsyslog::service
#
# This class enforces running of the rsyslog service.
#
# === Parameters
#
# === Variables
#
# === Examples
#
#  class { 'rsyslog::service': }
#
class rsyslog::service {
  service { $rsyslog::service_name:
    ensure     => $rsyslog::service_ensure,
    enable     => $rsyslog::service_enable,
    hasstatus  => $rsyslog::service_hasstatus,
    hasrestart => $rsyslog::service_hasrestart,
    require    => Class['rsyslog::config'],
  }
}
