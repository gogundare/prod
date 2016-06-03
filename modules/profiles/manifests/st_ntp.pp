class profiles::st_ntp {

	package { 'ntp':
                ensure => 'present'
}
        file { '/etc/ntp.conf':
                ensure  => file,
                owner   => 'root',
                group   => 'root',
                mode    => '0600',
                source  => 'puppet:///modules/profiles/st_ntp.cnf',
                require => Package['ntp'],
                notify  => Service['ntpd'],
        }
        service { 'ntpd':
                ensure => 'running',
                enable => 'true'
        }
}

