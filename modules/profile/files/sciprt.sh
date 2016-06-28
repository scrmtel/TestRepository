27/06/2016 class
-------------
exec { "name":
command => "sh script.sh",
path => "/usr/bin:/bin:/usr/local/bin",
timeout => 60,
} 
 

file_line { "name":
line => "sh script.sh"
path => "/etc/rc.local"
}

file_line { "name":
line => "sh script.sh using our owns resources:",
search => "using",
path => "/var/spool/cron"



}
