# encoding: UTF-8
require_relative "lib/sprangular_paypal_express/version"

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'sprangular_paypal_express'
  s.version     = SprangularPaypalExpress::VERSION
  s.summary     = 'Adds PayPal Express as a Payment Method to Sprangular'
  s.description = s.summary
  s.required_ruby_version = '>= 1.9.3'

  # s.author    = 'You'
  # s.email     = 'you@example.com'
  # s.homepage  = 'https://github.com/owner/sprangular_paypal_express'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'sprangular'
  s.add_dependency 'rails-assets-angular-cookies'
  s.add_dependency 'spree_core', '~> 2.4.0'
  s.add_dependency 'paypal-sdk-merchant', '1.106.1'

  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.1'
  s.add_development_dependency 'sass-rails', '~> 4.0.2'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pry'
end
