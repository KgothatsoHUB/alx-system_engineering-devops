# Puppet manifest to configure SSH client settings
# Configures the /etc/ssh/ssh_config file to connect to a server without typing a password

file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/ssh_config',
  line  => 'PasswordAuthentication no',
  match => '^#?PasswordAuthentication',
}

file_line { 'Declare identity file':
  path  => '/etc/ssh/ssh_config',
  line  => 'IdentityFile ~/.ssh/school',
  match => '^#?IdentityFile',
}
