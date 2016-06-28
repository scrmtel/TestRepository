node default {

include java


exec{"execting":
command => "mkdir test",
path => "/usr/bin:/bin:/sbin:/usr/local/bin"
}
}
