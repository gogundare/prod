class profiles::sendmail {
	package { 'sendmail':
		ensure 	=> 'present',
      	}

	file { '/etc/mail/sendmail.mc':
		ensure	=> 'file',
		owner	=> 'root',
		group	=> 'root',
		mode	=> '0644',
		source	=> 'puppet:///modules/profiles/sendmail.mc',
		notify	=> Service['sendmail']		
	}

	service { 'sendmail':
		ensure	=> 'running',
		enable	=> 'true',
	}
}
