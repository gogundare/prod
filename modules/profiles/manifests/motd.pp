class profiles::motd {

	file { '/etc/motd':
		ensure	=> file,
		owner	=> 'root',
		group	=> 'root',
		content	=> template('profiles/motd.erb'),
		mode	=> '0644',
	}
}
