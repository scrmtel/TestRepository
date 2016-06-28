class profile::chef
{
exec { "chefinstall":
command => "sh chefinstall.sh",
path => "/usr/bin:/sbin:/bin:/usr/local/bin",
cwd  => "/root",
}
}


