class roles::mbda_prod {
	include profiles::logon_warning	
	include profiles::securetty
	include profiles::profile
	include profiles::motd
	include profiles::login_defs
	include profiles::logrotate
	include profiles::ssh
	include profiles::apache
	include profiles::sendmail
	include profiles::sudoers
	include	profiles::aliases
	include profiles::users_management
}
