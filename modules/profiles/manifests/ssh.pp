class profiles::ssh {

package { 'openssh':
        	ensure => 'latest'
}
        file { '/etc/ssh/sshd_config':
        	ensure	=> file,
        	owner	=> 'root',
        	group	=> 'root',
        	mode	=> '0600',
        	source	=> 'puppet:///modules/profiles/sshd_config.cfg',
		require	=> Package['openssh'],
        	notify 	=> Service['sshd'],
    	}
        service { 'sshd':
        	ensure => 'running',
        	enable => 'true'
	}
}

