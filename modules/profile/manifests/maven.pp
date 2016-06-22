node default {

exec { "wget_maven":
command = > "wget http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz",
path => '/usr/bin:/bin:/usr/local/bin:/sbin',
cwd => "/tmp",  
}

exec { "untartarball":
command = > "tar xzf apache-maven-3.0.5-bin.tar.gz -C /usr/local",
path => '/usr/bin:/bin:/usr/local/bin:/sbin',
cwd => "/tmp",

}
exec { "renaming":
command = > "ln -s apache-maven-3.0.5 maven",
path => '/usr/bin:/bin:/usr/local/bin:/sbin',
cwd => "/usr/local"
}
}

