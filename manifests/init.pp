class jdkariso001a {

  if $::osfamily == 'RedHat' {
    $jdkname     = 'java-1.8.0-openjdk'
	$fw             = 'firewalld'
  } else  {
    $jdkname  = 'openjdk-8-jdk'
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
