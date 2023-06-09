say "Installing default Rubocop configuration for projects at UB Paderborn"

create_file ".rubocop_todo.yml"

create_file ".rubocop_custom.yml"

create_file ".rubocop.yml", <<~YML
  #
  # Automatically generated by `rails ubpb:rubocop-config:install`
  #
  # Based on: https://evilmartians.com/chronicles/rubocoping-with-legacy-bring-your-ruby-code-up-to-standard
  #
  # !!DO NOT EDIT MANUALLY!!
  # Use .rubocop_custom.yml instead
  #
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
    ubpb-rubocop-config:
      - config/custom.yml

  inherit_from:
    - .rubocop_todo.yml
    - .rubocop_strict.yml
    - .rubocop_custom.yml

  AllCops:
    SuggestExtensions: false
    TargetRubyVersion: 3.2

YML

create_file ".rubocop_strict.yml", <<~YML
  #
  # Automatically generated by `rails ubpb:rubocop-config:install`
  #
  # Based on: https://evilmartians.com/chronicles/rubocoping-with-legacy-bring-your-ruby-code-up-to-standard
  #
  # !!DO NOT EDIT MANUALLY!!
  # Use .rubocop_custom.yml instead
  #

  Lint/Debugger: # don't leave binding.pry or debugger
    Enabled: true
    Exclude: []
YML

