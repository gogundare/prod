class profiles::logon_warning {

	file { '/etc/issue':
        owner => 'root',
        group => 'root',
        mode => '644',
        source => 'puppet:///modules/profiles/logon_warning.cfg'
	}
}
