require 'rubygems'
require 'bundler/setup'
require 'logger'

Bundler.require(:default)

use Rack::ConditionalGet
use Rack::ETag
use Rack::Codehighlighter, :coderay, :markdown => true, :element => "pre>code"

require 'nesta/env'
Nesta::Env.root = ::File.expand_path('.', ::File.dirname(__FILE__))

require 'nesta/app'
run Nesta::App