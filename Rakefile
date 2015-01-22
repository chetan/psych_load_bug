# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'
require 'jeweler'

Jeweler::Tasks.new do |gemspec|
  gemspec.name = "psych_load_bug"
  gemspec.summary = "Psych Load Bug"
  gemspec.description = "test case for psych load bug"
  gemspec.email = "chetan@pixelcop.net"
  gemspec.homepage = "http://github.com/chetan/psych_load_bug"
  gemspec.authors = ["Chetan Sarva"]
  gemspec.license = "MIT"
  gemspec.executables = ["psych_load_bug"]
end

Dir['tasks/**/*.rake'].each { |rake| load rake }
