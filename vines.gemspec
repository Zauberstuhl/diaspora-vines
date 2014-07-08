require './lib/vines/version'

Gem::Specification.new do |s|
  s.name         = 'diaspora-vines'
  s.version      = Vines::VERSION
  s.summary      = %q[Diaspora-vines is a Vines fork build for diaspora integration.]
  s.description  = %q[Diaspora-vines is a Vines fork build for diaspora integration. DO NOT use it unless you know what you are doing!]

  s.authors      = ['Lukas Matt']
  s.email        = %w[lukas@zauberstuhl.de]
  s.homepage     = 'http://joindiaspora.com/'
  s.license      = 'MIT'

  s.files        = Dir['[A-Z]*', 'vines.gemspec', '{bin,lib,conf,web}/**/*'] - ['Gemfile.lock']
  s.test_files   = Dir['test/**/*']
  s.executables  = %w[vines]
  s.require_path = 'lib'

  s.add_dependency 'bcrypt', '~> 3.1'
  s.add_dependency 'em-hiredis', '~> 0.1.1'
  s.add_dependency 'eventmachine', '~> 1.0.3'
  s.add_dependency 'http_parser.rb', '~> 0.5.3'
  s.add_dependency 'net-ldap', '~> 0.3.1'
  s.add_dependency 'nokogiri', '>= 1.5.10'

  s.add_development_dependency 'minitest', '~> 5.3'
  s.add_development_dependency 'rake', '~> 10.3'

  s.required_ruby_version = '>= 1.9.3'
end
