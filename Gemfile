source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.4', '>= 5.2.4.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3.4'
gem 'rack-cors'
gem 'dotenv-rails'
gem 'nokogiri', '~> 1.11.4'
gem 'google-cloud-translate'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'acts-as-taggable-on', '~> 6.0'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  gem 'pry-rails'
  gem 'capybara-webkit', require: false
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'rspec-json_expectations'
  gem 'rspec-collection_matchers'
  gem 'rails-controller-testing'
  gem 'timecop'
  gem 'webmock'
  gem 'vcr'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :test do
  gem 'capybara-webkit', require: false
  gem 'database_cleaner'
  gem 'formulaic'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'rspec-json_expectations'
  gem 'rspec-collection_matchers'
  gem 'timecop'
  gem 'webmock'
  gem 'vcr'
end


group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
end

group :test do
  gem 'capybara-webkit', require: false
  gem 'database_cleaner'
  gem 'formulaic'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'rspec-json_expectations'
  gem 'rspec-collection_matchers'
  gem 'rails-controller-testing'
  gem 'timecop'
  gem 'webmock'
  gem 'vcr'
end



# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
