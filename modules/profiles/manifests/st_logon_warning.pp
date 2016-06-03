class profiles::st_logon_warning {

	file { '/etc/issue':
        owner => 'root',
        group => 'root',
        mode => '644',
        source => 'puppet:///modules/profiles/st_logon_warning.cnf'
	}
}
