source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.5"

gem "active_model_serializers"
gem "activerecord-reset-pk-sequence"
gem "bootsnap", require: false
gem "pg"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "sqlite3", "~> 1.4"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "graphql"
gem 'graphiql-rails'


group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'byebug', platform: :mri

  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'guard'
  gem 'guard-bundler', require: false
  gem 'guard-rspec', require: false

  gem 'rspec-rails', '~> 3.5' # , :github => 'rspec/rspec-rails'
  gem 'rails-controller-testing'
  # Checks ruby code grammar
  gem 'rubocop', require: false
  # With rspec
  gem 'rubocop-rspec'
  # With guard
  gem 'guard-rubocop'
end



group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end



group :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'database_cleaner'
end

group :coverage do
  gem 'simplecov', :require => false
end

