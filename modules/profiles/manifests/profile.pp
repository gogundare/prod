class profiles::profile {

        file { '/etc/profile':
        	ensure => 'present',
        	owner => 'root',
        	group => 'root',
        	mode => '0644',
        	source => 'puppet:///modules/profiles/profile.cfg'
	}
}

