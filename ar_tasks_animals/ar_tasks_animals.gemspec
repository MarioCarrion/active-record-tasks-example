# frozen_string_literal: true

require_relative 'lib/ar_tasks_animals/version'

Gem::Specification.new do |s|
  s.name        = 'ar_tasks_animals'
  s.version     = Animals::Version::VERSION
  s.date        = Animals::Version::DATE
  s.summary     = 'ActiveRecord::Tasks for Animals! OH MEOW'
  s.description = 'Example Gem as example for ActiveRecord::Tasks'
  s.authors     = ['Mario Carrion']
  s.email       = 'info@carrion.ws'
  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {spec}`.split("\n")
  s.require_path = 'lib'
  s.homepage    = 'http://www.mariocarrion.com/'
  s.license     = 'MIT'

  s.required_ruby_version = '~> 2.4'

  s.add_runtime_dependency 'activerecord', '~> 5.1',  '>= 5.1.4'
  s.add_runtime_dependency 'mysql2',       '~> 0.4.9'

  s.add_development_dependency 'database_cleaner', '~> 1.6'
  s.add_development_dependency 'factory_girl',     '~> 4.8'
  s.add_development_dependency 'pry',              '~> 0.11'
  s.add_development_dependency 'pry-nav',          '~> 0.2'
  s.add_development_dependency 'rspec',            '~> 3.7'
  s.add_development_dependency 'rubocop',          '~> 0.50'
  s.add_development_dependency 'simplecov',        '~> 0.15'
end
