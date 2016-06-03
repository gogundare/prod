class profiles::st_securetty {

        file { '/etc/securetty':
        	ensure => 'present',
        	owner => 'root',
        	group => 'root',
        	mode => '0600',
        	source => 'puppet:///modules/profiles/st_securetty.cnf'
	}
}

