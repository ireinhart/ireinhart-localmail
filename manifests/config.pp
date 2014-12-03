class localmail::config inherits localmail {

  include localmail::config::dovecot
  include localmail::config::postfix

  user { 'localmail':
    ensure     => present,
    managehome => true,
    password => '$6$lgfLleHF$cnXEsYzUOMFj3MYSfhWLw/koR/WnWq5O/YVQCjd45/nakj0pp8arkbKr.7ZHUd7GhbKIrK3f7XTleNulwUHru.',
  }

}
