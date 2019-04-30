# -*- encoding: utf-8 -*-
# stub: jekyll-redirect-from 0.15.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-redirect-from".freeze
  s.version = "0.15.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Parker Moore".freeze]
  s.date = "2019-03-23"
  s.email = ["parkrmoore@gmail.com".freeze]
  s.homepage = "https://github.com/jekyll/jekyll-redirect-from".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "2.7.3".freeze
  s.summary = "Seamlessly specify multiple redirection URLs for your pages and posts".freeze

  s.installed_by_version = "2.7.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>.freeze, ["< 5.0", ">= 3.3"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<jekyll-sitemap>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5"])
      s.add_development_dependency(%q<rubocop-jekyll>.freeze, ["~> 0.4"])
    else
      s.add_dependency(%q<jekyll>.freeze, ["< 5.0", ">= 3.3"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<jekyll-sitemap>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
      s.add_dependency(%q<rubocop-jekyll>.freeze, ["~> 0.4"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, ["< 5.0", ">= 3.3"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<jekyll-sitemap>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
    s.add_dependency(%q<rubocop-jekyll>.freeze, ["~> 0.4"])
  end
end