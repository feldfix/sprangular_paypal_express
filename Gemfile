ruby "2.1.5"

source "https://rubygems.org"
source "https://rails-assets.org"

gem 'sprockets', '~> 2.11.0'
gem 'spree', github: 'spree/spree', branch: '2-4-stable'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '2-4-stable'
gem 'sqlite3'
gem 'pg'
gem 'sprangular', github: 'sprangular/sprangular'

group :test do
 gem 'require_all'
 gem 'capybara'
 gem 'capybara-screenshot'
 gem 'poltergeist'
end
# Provides basic authentication functionality for testing parts of your engine
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '2-4-stable'

gemspec
