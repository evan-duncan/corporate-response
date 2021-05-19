source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'

gem 'administrate', '~> 0.13.0'
gem 'administrate-field-active_storage'
gem 'aws-sdk', '~> 3'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'bcrypt', '~> 3.1.7'
gem 'devise', '~> 4.7', '>= 4.7.1'
gem 'jbuilder', '~> 2.7'
gem 'mini_magick'
gem 'pg', '>= 0.18', '< 2.0'
gem 'public_suffix', '~> 4.0', '>= 4.0.4'
gem 'puma', '~> 4.3'
gem 'pundit', '~> 2.1'
gem 'sass-rails', '>= 6'
gem 'scout_apm'
gem 'sentimental'
gem 'sidekiq', '~> 6.0', '>= 6.0.6'
gem 'sendgrid-actionmailer'
gem "sentry-raven"
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'whois'
gem 'wombat'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails', '~> 5.1', '>= 5.1.1'
  gem 'rspec-rails', '~> 4.0'
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
