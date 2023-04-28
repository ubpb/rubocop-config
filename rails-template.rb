# Add Rubocop
gem_group :development do
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-performance", require: false
  gem "standard", require: false
end

run "bundle"

create_file ".rubocop_todo.yml"

create_file ".rubocop.yml", <<~YML
  inherit_mode:
    merge:
      - Exclude

  require:
    - standard
    - rubocop-performance
    - rubocop-rails

  inherit_gem:
    standard: config/base.yml
    standard-performance: config/base.yml
    standard-custom: config/base.yml

  inherit_from: # order matters
    - "https://github.com/ubpb/rubocop-rails-template/blob/main/config/rails.yml"
    - "https://github.com/ubpb/rubocop-rails-template/blob/main/config/custom.yml"
    - .rubocop_todo.yml
    - "https://github.com/ubpb/rubocop-rails-template/blob/main/config/strict.yml"

  AllCops:
    SuggestExtensions: false
    TargetRubyVersion: 3.2
YML
