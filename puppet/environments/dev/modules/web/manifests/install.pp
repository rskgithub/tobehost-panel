class web::install inherits web {


	package {'phpmyadmin':
		ensure => 'present',
	}

#	package {'fail2ban':
#		ensure => 'present',
#	}

	package {'ftpcopy':
		ensure => 'present',
	}


	# Apache
	package {'apache2':
		ensure => 'present',
	}
	package {'apache2-suexec':
		ensure => 'present',
		notify => Service['apache2'],
	}
#	package {'libapache2-mod-php5':
#		ensure => 'present',
#		notify => Service['apache2'],
#	}
#	package {'libapache2-mod-ruby':
#		ensure => 'present',
#		notify => Service['apache2'],
#	}
	package {'libapache2-mod-fcgid':
		ensure => 'present',
		notify => Service['apache2'],
	}

	package{'libapache2-modsecurity':
		ensure => 'present',
		notify => Service['apache2'],
	}


	# PHP
	package {'php5':
		ensure => 'present',
	}
	package {'php5-cli':
		ensure => 'present',
	}
	package {'php5-cgi':
		ensure => 'present',
	}
	package {'php5-gd':
		ensure => 'present',
	}
	package {'php5-mysql':
		ensure => 'present',
	}
	package {'php5-imagick':
		ensure => 'present',
	}
	package {'php5-mcrypt':
		ensure => 'present',
	}
	package {'php5-imap':
		ensure => 'present',
	}
	package {'php-pear':
		ensure => 'present',
	}
	package {'php-auth':
		ensure => 'present',
	}
	package {'php5-curl':
		ensure => 'present',
	}

}
