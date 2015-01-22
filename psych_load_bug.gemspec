# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "psych_load_bug"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chetan Sarva"]
  s.date = "2015-01-22"
  s.description = "test case for psych load bug"
  s.email = "chetan@pixelcop.net"
  s.executables = ["psych_load_bug"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/psych_load_bug",
    "lib/psych_load_bug.rb",
    "psych_load_bug.gemspec"
  ]
  s.homepage = "http://github.com/chetan/psych_load_bug"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "Psych Load Bug"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<psych>, ["~> 2.0.11"])
      s.add_runtime_dependency(%q<json>, ["~> 1.8"])
    else
      s.add_dependency(%q<psych>, ["~> 2.0.11"])
      s.add_dependency(%q<json>, ["~> 1.8"])
    end
  else
    s.add_dependency(%q<psych>, ["~> 2.0.11"])
    s.add_dependency(%q<json>, ["~> 1.8"])
  end
end

