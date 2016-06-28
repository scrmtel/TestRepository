require 'puppet/provider/exec'

Puppet::Type.type(:exec).provide :ruby, :parent => Puppet::Provider::Exec do

  confine :feature => :posix

  commands :ruby =>
  if File.exists?("/opt/puppetlabs/puppet/bin/ruby")
    '/opt/puppetlabs/puppet/bin/ruby'
  elsif File.exists?('/opt/puppet/bin/ruby')
    '/opt/puppet/bin/ruby'
  else
    'ruby'
  end

  desc <<-EOT
    Executes ruby code. One of the `onlyif`, `unless`, or `creates`
    parameters should be specified to ensure the command is idempotent.

    More complex scripts can be run by a variable containing the entire script
    as the value of the `command` parameter. 

    For example, it's much easier to parse JSON or YAML with Ruby than shell.

    Example:
        # Rename the Guest account
        exec { 'rename-guest':
          command   => "require 'json'; array = JSON.parse(File.read('/etc/somewhere/array.json')); array.each { |item| dosomethinguseful } ;"
          provider  => ruby,
        }
  EOT

  def checkexe(command)
  end

  def validatecmd(command)
    true
  end

  def run(command, check = false)
    super([command(:ruby), '-e', command], check)
  end

end
