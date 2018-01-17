source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'foundation-rails'
gem "haml-rails"
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'pg'
gem 'rails', '~> 5.1.4'
gem 'sass-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# gem 'bcrypt', '~> 3.1.7'
# gem 'puma', '~> 3.7'
# gem 'redis', '~> 3.0'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'capistrano', '~> 3.7', '>= 3.7.1'
  gem 'capistrano-rails', '~> 1.2'
  gem 'capistrano-rbenv', '~> 2.1'
  gem 'capistrano-passenger', '~> 0.2.0'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sqlite3'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
