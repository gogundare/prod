class profiles::login_defs {

        file { '/etc/login.defs':
        	ensure => 'present',
        	owner => 'root',
        	group => 'root',
 	        mode => '0644',
        	source => 'puppet:///modules/profiles/login.defs.cfg'
	}
}

