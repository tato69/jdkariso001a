class jdkariso001a {

  if $::osfamily == 'RedHat' {
    $jdkname     = 'java-1.8.0-openjdk'
  } else  {
    $jdkname  = 'openjdk-8-jdk'
  }

 package { $jdkname:
  ensure  => latest,

}

}
