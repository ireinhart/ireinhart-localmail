class localmail::config::postfix {

  # main.cf
  file { '/etc/postfix/main.cf':
    source  => 'puppet:///modules/localmail/main.cf',
    require => Package['postfix-pcre'],
  }

  # virtual_domains.pcre
  file { '/etc/postfix/virtual_domains.pcre':
    source  => 'puppet:///modules/localmail/virtual_domains.pcre',
    require => Package['postfix-pcre'],
  }

  # virtual_forwardings.pcre
  file { '/etc/postfix/virtual_forwardings.pcre':
    source  => 'puppet:///modules/localmail/virtual_forwardings.pcre',
    require => Package['postfix-pcre'],
  }

}
