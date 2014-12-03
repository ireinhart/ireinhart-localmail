class localmail::install {

  $ensure_installed = [
    'bsd-mailx',
    'postfix-pcre',
    'dovecot-core',
    'dovecot-imapd',
  ]

  package { $ensure_installed: ensure => 'installed' }

  preseed_package {'postfix': ensure => 'present' }

  define preseed_package ( $ensure, $source = false ) {
    $real_source = $source ? {
      false => "puppet:///modules/localmail/$name.preseed",
      default => $source,
    }
    file { "/var/local/preseed/$name.preseed":
      source => $real_source,
      mode => 600,
      backup => false,
      require => File['/var/local/preseed'],
    }
    package { "$name":
      ensure => $ensure,
      responsefile => "/var/local/preseed/$name.preseed",
      require => File["/var/local/preseed/$name.preseed"],
    }
  }

  file { '/var/local/preseed':
    ensure  => 'directory',
  }
}
