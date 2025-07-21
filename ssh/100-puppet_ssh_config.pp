# connect to a server without a password
# set up client config file

file_line { 'Turn off passwd auth':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication no',
  match   => '^\s*PasswordAuthentication\s+',
  replace => true,
}

file_line { 'Declare identity file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    IdentityFile ~/.ssh/school',
  match   => '^\s*IdentityFile\s+',
  replace => true,
}
