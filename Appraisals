# frozen_string_literal: true

appraise "activerecord-6-0" do
  gem "activerecord", "~> 6.0.0"
  gem "sqlite3", "~> 1.4"
  gem "concurrent-ruby", "< 1.3.5"
end

appraise "activerecord-6-1" do
  gem "activerecord", "~> 6.1.0"
  gem "sqlite3", "~> 1.4"
  gem "rspec-rails", "~> 6.0"
  gem "concurrent-ruby", "< 1.3.5"
end

appraise "activerecord-7-0" do
  gem "activerecord", "~> 7.0.0"
  gem "sqlite3", "~> 1.4"
  gem "rspec-rails", "~> 7.0"
  gem "concurrent-ruby", "< 1.3.5"
end

appraise "activerecord-7-1" do
  gem "activerecord", "~> 7.1.0"
  gem "sqlite3", "~> 1.4"
  gem "rspec-rails", "~> 7.0"
end

appraise "activerecord-7-2" do
  gem "activerecord", "~> 7.2.0"
  gem "sqlite3", "~> 1.4"
  gem "rspec-rails", "~> 7.0"
end

appraise "activerecord-8-0" do
  gem "activerecord", "~> 8.0.0"
  gem "sqlite3", "~> 2.0"
  gem "rspec-rails", "~> 7.1"
end

appraise "activerecord-master" do
  git "https://github.com/rails/rails.git" do
    gem "rails"
    gem "activerecord"
  end

  gem "sqlite3"
  gem "rspec-rails"
end
