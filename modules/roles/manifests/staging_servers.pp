class roles::staging_servers {

	include profiles::st_login_defs
	include profiles::st_logon_warning
	include profiles::st_logrotate
	include profiles::st_motd
	include profiles::st_ntp
	include profiles::st_profile
	include profiles::st_securetty
	include profiles::st_ssh
	include profiles::st_aliases
	include profiles::st_users_management
}
