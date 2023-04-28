say "Installing default Rubocop configuration for projects at UB Paderborn"

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

  # inherit_from: # order matters
  #   - "https://raw.githubusercontent.com/ubpb/rubocop-config/main/config/rails.yml"
  #   - "https://raw.githubusercontent.com/ubpb/rubocop-config/main/config/custom.yml"
  #   - .rubocop_todo.yml
  #   - "https://raw.githubusercontent.com/ubpb/rubocop-config/main/config/strict.yml"

  AllCops:
    SuggestExtensions: false
    TargetRubyVersion: 3.2
YML
