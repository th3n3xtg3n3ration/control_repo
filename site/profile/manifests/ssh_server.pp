class profile::ssh_server {
          package { 'openssh-server':
                  ensure => present,
          }
          service { 'sshd':
                  ensure => 'running',
                  enable => 'true',
          }
          ssh_authorized_key { 'root@master.puppet.vm':
                  ensure => present,
                  user   => 'root',
                  type   => 'ssh-rsa',
                  key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDEnso+y9j+Jm7OzgpHhR6yI57G3eMUAYt2jEzsGFryZdbolIVpv+vnHn2SVeEangYYt2InjpT2Nq51XIk3ap2aNURjIcA618LUDCbX+T1H/Evpn6lr1BvdwCtHTLDUtpW0fot1q4OEDwCTVypoy7PL3soDsMnjagti7wMvEsBV459Tdr+JZ5hONwiiX5shUE+Qt9JGkkpukm1r4ANiwl51iTWBU8UanZlCGRCI9VGLnjNj5SVMjksKJ8YtcEUL+n9dZRNQY/l7YKCzKQxXXa6hxJc7e/Z6/NypyhujVmpVEevcgv/n5eEtZZKzYVAGAcwoc/AQrWivA4rL4CztCsd3'
          
          }

}
