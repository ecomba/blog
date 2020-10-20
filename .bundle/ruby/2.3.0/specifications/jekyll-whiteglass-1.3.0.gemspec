# -*- encoding: utf-8 -*-
# stub: jekyll-whiteglass 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-whiteglass"
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chayoung You"]
  s.date = "2017-02-20"
  s.email = ["yousbe@gmail.com"]
  s.homepage = "https://github.com/yous/whiteglass"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Minimal, responsive Jekyll theme for hackers."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>, ["~> 3.3"])
      s.add_runtime_dependency(%q<jekyll-archives>, ["~> 2.1"])
      s.add_runtime_dependency(%q<jekyll-paginate>, ["~> 1.1"])
      s.add_runtime_dependency(%q<jekyll-sitemap>, ["~> 1.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.12"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<jekyll>, ["~> 3.3"])
      s.add_dependency(%q<jekyll-archives>, ["~> 2.1"])
      s.add_dependency(%q<jekyll-paginate>, ["~> 1.1"])
      s.add_dependency(%q<jekyll-sitemap>, ["~> 1.0"])
      s.add_dependency(%q<bundler>, ["~> 1.12"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<jekyll>, ["~> 3.3"])
    s.add_dependency(%q<jekyll-archives>, ["~> 2.1"])
    s.add_dependency(%q<jekyll-paginate>, ["~> 1.1"])
    s.add_dependency(%q<jekyll-sitemap>, ["~> 1.0"])
    s.add_dependency(%q<bundler>, ["~> 1.12"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end