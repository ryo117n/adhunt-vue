# -*- encoding: utf-8 -*-
# stub: dotenv 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "dotenv".freeze
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brandon Keepers".freeze]
  s.date = "2013-04-15"
  s.description = "Loads environment variables from `.env`.".freeze
  s.email = ["brandon@opensoul.org".freeze]
  s.homepage = "https://github.com/bkeepers/dotenv".freeze
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Loads environment variables from `.env`.".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
