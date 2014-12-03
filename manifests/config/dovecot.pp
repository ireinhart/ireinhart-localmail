class localmail::config::dovecot {

  file { '/etc/dovecot/conf.d/10-auth.conf':
    source  => 'puppet:///modules/localmail/10-auth.conf',
    notify  => Service[dovecot]
  }

  file { '/etc/dovecot/conf.d/10-mail.conf':
    source  => 'puppet:///modules/localmail/10-mail.conf',
    notify  => Service[dovecot]
  }

  service { dovecot:
    ensure => running
  }

}
