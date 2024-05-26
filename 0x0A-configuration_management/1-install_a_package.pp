#!/usr/bin/pup
# Ensure pip3 is installed
package { 'python3-pip':
  ensure => installed,
}

# Ensure the specified version of Flask (2.1.0) is installed using pip3
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'], # Ensure pip3 is installed before Flask
}
