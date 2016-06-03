class profiles::apache {
	package { 'httpd':
		ensure => 'installed'
}
	file { '/etc/httpd/conf/httpd.conf':
		ensure => 'present',
		owner => 'root',
		group => 'root',
		mode => '0644',
		source => 'puppet:///modules/profiles/apache.cfg',
		notify => Service['httpd']
}
	service { 'httpd':
			ensure => 'running',
			enable => 'true',
}
}
