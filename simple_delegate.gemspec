# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: simple_delegate 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "simple_delegate"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["kaspernj"]
  s.date = "2016-04-09"
  s.description = "A simple library to delegate methods to instance variables"
  s.email = "k@spernj.org"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".rubocop.yml",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/simple_delegate.rb",
    "simple_delegate.gemspec",
    "spec/simple_delegate_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/kaspernj/simple_delegate"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "A simple library to delegate methods to instance variables"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 3.4.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<best_practice_project>, ["= 0.0.9"])
      s.add_development_dependency(%q<rubocop>, ["= 0.39.0"])
    else
      s.add_dependency(%q<rspec>, ["~> 3.4.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<best_practice_project>, ["= 0.0.9"])
      s.add_dependency(%q<rubocop>, ["= 0.39.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 3.4.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<best_practice_project>, ["= 0.0.9"])
    s.add_dependency(%q<rubocop>, ["= 0.39.0"])
  end
end

