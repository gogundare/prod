class profiles::sudoers {
		
	file { '/etc/sudoers':
		ensure	=> 'file',
		owner	=> 'root',
		group	=> 'root',
		mode	=> '0440',
		source	=> 'puppet:///modules/profiles/sudoers.cfg',
	}
}
