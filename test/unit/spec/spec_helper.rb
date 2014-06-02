# Encoding: utf-8
require 'chefspec'
require 'chefspec/berkshelf'
require 'chef/application'

::LOG_LEVEL = :fatal
::UBUNTU_OPTS = {
  platform: 'fedora',
  version: '20',
  log_level: ::LOG_LEVEL
}
::CHEFSPEC_OPTS = {
  log_level: ::LOG_LEVEL
}

def stub_resources
end

at_exit { ChefSpec::Coverage.report! }
