require 'rubygems'
require 'bundler/setup'
require "logger"

require 'coderay'
require 'rack/codehighlighter'
use Rack::Codehighlighter, :coderay, :markdown => true, :element => "pre>code", :pattern => /\A:::(\w+)\s*(\n|&#x000A;)/i

Bundler.require(:default)

require 'nesta/app'

Nesta::App.root = ::File.expand_path('.', ::File.dirname(__FILE__))
run Nesta::App
