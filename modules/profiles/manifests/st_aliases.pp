class profiles::st_aliases {

	file { '/etc/aliases': 
		ensure	=> 'file',
		owner	=> 'root',
		group	=> 'root',
		mode	=> '0440',
		source	=> 'puppet:///modules/profiles/st_aliases.cnf',
	}
}
