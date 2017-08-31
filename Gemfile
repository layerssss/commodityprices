source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'jbuilder', '~> 2.5'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'yql'

gem 'bootstrap-sass'
gem 'bootstrap_form'
gem 'bootswatch-rails'
gem 'foreman'
gem 'haml-rails'
gem 'rails_bootstrap_navbar'
gem 'rest-client'
gem 'table-for'

group :development, :test do
  gem 'capybara', '~> 2.13'
  gem 'pry-rails'
  gem 'selenium-webdriver'
end

group :development do
  gem 'annotate'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
