class localmail::install {

  $ensure_installed = [
    'bsd-mailx',
    'postfix-pcre',
    'dovecot-core',
    'dovecot-imapd',
  ]

  package { $ensure_installed: ensure => 'installed' }

  preseed_package {'postfix': ensure => 'present', module => 'localmail' }

  file { '/var/local/preseed':
    ensure  => 'directory',
  }
}
