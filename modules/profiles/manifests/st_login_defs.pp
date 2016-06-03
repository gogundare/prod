class profiles::st_login_defs {

        file { '/etc/login.defs':
        	ensure => 'present',
        	owner => 'root',
        	group => 'root',
 	        mode => '0644',
        	source => 'puppet:///modules/profiles/st_login.defs.cnf'
	}
}

