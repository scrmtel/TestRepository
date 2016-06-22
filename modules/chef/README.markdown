# pizzaops-chef

Because sometimes you really just need Puppet to be Chef for one fucking minute.

A `ruby` provider for the `exec` resource.

#### Table of Contents

1. [Overview](#overview)
1. [Setup - The basics of getting started with chef](#setup)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Overview

`pizzaops-chef` is a `ruby` provider for the `exec` type, to enable running arbitrary Ruby code on Puppet agent-managed nodes.

<center>Yes. I know.</center>
<div style="text-align:center"><img src ="https://encyclopediasatanica.files.wordpress.com/2013/08/baphometpentagram.jpg" /></div>  

If you use this, you should probably feel bad about it.

Like all good hacky bullshit projects, there are no tests.

## Setup 

Requires you to either have an executable `ruby` binary in your path, or to be running Puppet Enterprise. The `ruby` provider will favor PE's built in Ruby over system Ruby, because we know it works.


## Usage

```puppet
# Load ruby script from `files` subdirectory of `mymodule` module.
$script = file('mymodule/myscript.rb') 

# Run the script
exec { 'evil ruby script':
  command  => $script,
  provider => ruby,
}
```

Like any `exec`, it should be combined with `onlyif`, `unless`, etc., to make it idempotent.

## Limitations

Currently only supports \*nix systems. There's no reason it can't work on Windows, but I haven't gotten around to trying it yet.

## Development

Fork it, make a pull request. The usual applies.

<a href="http://www.wtfpl.net/"><img src="http://www.wtfpl.net/wp-content/uploads/2012/12/wtfpl-badge-4.png" width="80" height="15" alt="WTFPL" /></a>
