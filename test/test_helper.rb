ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require 'minitest/autorun'
require 'dock_test'

# the following block sets the DockTest configuration
# if many environment is involved, a services.yml file may organize things better.
DockTest.configure do |c|
  c.url = case ENV['DOCK_ENV']
          when 'production'
            'http://still-castle-9991.herokuapp.com/'
          else
            'http://localhost:9871'
          end
  c.skippy = :production
end
