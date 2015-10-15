node 'losttemple.linuxmaster.com' {
}

node 'vm01.linuxmaster.com' {
    file { '/tmp/testerver':
        content => "This is a test server.\n",
    }
    include sshd
}

node /^vm[0-9]+\.linuxmaster\.com$/ {
    include vim_upgrade
    include sshd
}
