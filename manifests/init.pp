# == Class: localmail
#
class localmail() {

  include localmail::install
  include localmail::config

  Class['localmail::install'] -> Class['localmail::config']

}
