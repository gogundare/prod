class profiles::st_profile {

        file { '/etc/profile':
        	ensure => 'present',
        	owner => 'root',
        	group => 'root',
        	mode => '0644',
        	source => 'puppet:///modules/profiles/st_profile.cnf'
	}
}

