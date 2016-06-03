class profiles::st_ssh {

package { 'openssh':
        	ensure => 'latest'
}
        file { '/etc/ssh/sshd_config':
        	ensure	=> file,
        	owner	=> 'root',
        	group	=> 'root',
        	mode	=> '0600',
        	source	=> 'puppet:///modules/profiles/st_sshd_config.cnf',
		require	=> Package['openssh'],
        	notify 	=> Service['sshd'],
    	}
        service { 'sshd':
        	ensure => 'running',
        	enable => 'true'
	}
}

