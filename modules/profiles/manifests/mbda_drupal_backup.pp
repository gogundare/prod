class profiles::mbda_drupal_backup {

	$drupalbackup = $osfamily ? {
		'RedHat'	=> '/usr/local/bin/pal.sh',
	}
	
	schedule { 'system-daily':
		period	=> daily,
		range	=> '15:31 - 15:35',
	}

	exec { $drupalbackup:
		schedule => 'system-daily',
	}
}
