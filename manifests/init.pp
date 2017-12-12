class jdkariso001a {

  if $::osfamily == 'RedHat' {
    $apachename     = 'httpd'
	$fw             = 'firewalld'
  } else  {
    $apachename  = 'apache2'
	$fw             = 'ufw'
  }

 package { $jdkname:
  ensure  => latest,
}

service { $fw:
    ensure   => 'stopped',
    enable  => false,
}

}
