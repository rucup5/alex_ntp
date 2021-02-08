# Manage NTP
class alex_ntp {
ensure_packages(['ntp'])
file { '/etc/ntp.conf':
source => 'puppet:///modules/alex_ntp/ntp.conf',
notify => Service['ntp'],
require => Package['ntp'],
}
service { 'ntp':
ensure => running,
enable => true,
}
}
