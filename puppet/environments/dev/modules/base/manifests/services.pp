class base::services inherits base {

	service { "ssh":
		ensure  => "running",
		enable  => "true",
		hasrestart => "true",
		require => Package["openssh-server"],
	}

	service { "ntp":
		ensure  => "running",
		enable  => "true",
		hasrestart => "true",
		require => Package["ntp"],
	}

}
