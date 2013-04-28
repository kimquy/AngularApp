source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0.0.beta1'

gem 'thin'

gem "therubyracer"
gem "less-rails"
gem 'angularjs-rails'
gem 'twitter-bootstrap-rails'

group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.0.1'

group :development do
	gem 'sqlite3'
end

group :production do
	gem 'pg'
	gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
	gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end