require 'rubygems'
require 'bundler/setup'

Bundler.require(:default, :test)

begin
  require 'vlad'
  # Set :app to :passenger if you're using Phusion Passenger.
  Vlad.load(:scm => :git, :app => :passenger, :web => nil)
rescue LoadError
end
