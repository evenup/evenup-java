#TODO document me
class java {

  package { 'java-1.6.0-openjdk':
    ensure  => installed
  }

  file {
    '/etc/profile.d/java.sh':
      ensure  => file,
      mode    => '0555',
      owner   => root,
      group   => root,
      source  => 'puppet:///modules/java/java.profile'
  }
}
