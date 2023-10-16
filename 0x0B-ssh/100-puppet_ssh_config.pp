#!/usr/bin/env bash
# Using puppet to connect without password

file { 'etc/ssh/ssh_cofig':
	ensure => present,

content =>"

	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}
