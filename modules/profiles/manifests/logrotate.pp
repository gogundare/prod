class profiles::logrotate {

        file { '/etc/logrotate.conf':
        	ensure => 'file',
        	owner => 'root',
        	group => 'root',
        	mode => '0644',
        	source => 'puppet:///modules/profiles/logrotate.cfg'
	}
}

