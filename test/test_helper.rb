require 'rubygems'
require 'bundler'
Bundler.require(:default, :test)

$: << File.expand_path('../../lib/',  __FILE__)
require 'jruby-thrift'

RACK_ENV = :test

