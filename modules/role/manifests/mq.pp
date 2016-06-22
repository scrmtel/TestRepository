class role::mq
{
include ::profile::mq
include ::profile::java
class["profile::java"]-> class["profile::mq"]
}

