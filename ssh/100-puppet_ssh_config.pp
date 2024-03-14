#!/usr/bin/env bash
#using puppet to set desired configuration settings


file { '/etc/ssh/ssh_config':
	ensure => present,

content => "
	#SSH CLIENT CONFIGURATION
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
}
