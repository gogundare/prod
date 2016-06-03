##
## Define the function to take care of adding the users
##
#
class profiles::users_management {

	group	{ 'wheel':
  	ensure	=> 'present',
	tag	=> 'wheel',
}


        group   { 'mbda':
        ensure  => 'present',
        tag     => 'mbda',
}


  user { 'sutch':
   	comment    => 'Dennis Sutch',
    	home       => "/home/sutch",
    	shell      => '/bin/bash',
    	uid        => '513',
    	gid        => '513',
    	managehome => true,
    	password   => '$1$SOU57gVz$JcAsao7GkUYCnPvXfPOGV/',
	groups     => 'sutch',
#    require    => Group['Admin']
  }	
	group { 'sutch':
	gid 	=> '513'
     }

##########  FOR SETTING SSH-KEY, USE THE BELOW FIELD  ##########

#       if $sshkeytype != '' {
#       ssh_authorized_key{ $username:
#       ensure  => present,
#      user    => $username,
#      type    => $sshkeytype,
#      key     => $sshkey,
#      name    => $username,
#      require => User[$title],
#    }

   user { 'timwood':
        comment    => 'Tim Wood',
        home       => "/home/timwood",
        shell      => '/bin/bash',
        uid        => '514',
        gid        => '514',
        managehome => true,
        password   => '$1$EgwoyKbK$PS.TQhj1ViSNyyOphQyYx0',
	groups     => 'timwood',
	require    => Group['mbda'],  
}
        group { 'timwood':
            gid => '514'
	}
}
##########  FOR SETTING SSH-KEY, USE THE BELOW FIELD  ##########
#
##       if $sshkeytype != '' {
##       ssh_authorized_key{ $username:
##       ensure  => present,
##      user    => $username,
##      type    => $sshkeytype,
##      key     => $sshkey,
##      name    => $username,
##      require => User[$title],
##    }
#

#   user { 'jummie':
#        comment    => 'jummie',
#        home       => "/home/jummie",
#        shell      => '/bin/bash',
#        uid        => '515',
#        gid        => '515',
#        managehome => true,
#        password   => '$6$0RsKewg2$sYVHWPkingF5tQzCgKgYGc9QMy0TCUsJ0hP3AavnGHA2UKMhBdEJqVcFYue/m3N7V2sdasFcR4Jtajp5oSudq0',
#    	groups     => 'jummie',
#    	require    => Group['jummie']
#  }
#  	group { 'jummie':
#    	gid 	=> '515'
#  }
#}
