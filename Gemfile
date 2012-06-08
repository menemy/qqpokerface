source 'https://rubygems.org'

gem "heroku"
gem 'rails', '3.2.2'

gem "meta_search",    '>= 1.1.0.pre'
group :development do
	gem 'sqlite3'

	gem "activeadmin"
end

group :production do
	gem "thin"
	gem 'pg'

	gem "meta_search",    '>= 1.1.0.pre'
	gem "activeadmin", :git => "https://github.com/gregbell/active_admin.git"
end

gem 'sass-rails',   '~> 3.2.3'
group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem "paperclip", "~> 3.0"
gem 'aws-s3'
gem 'aws-sdk'

gem 'friendly_id'
gem 'will_paginate'
gem 'jquery-rails'

gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
