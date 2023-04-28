require_relative "lib/ubpb/rubocop-config/version"

Gem::Specification.new do |spec|
  spec.name        = "ubpb-rubocop-config"
  spec.version     = UBPB::RubocopConfig::VERSION
  spec.authors     = [ "René Sprotte" ]
  spec.homepage    = "https://github.com/ubpb/rubocop-config"
  spec.summary     = "Default Rubocop configuration for projects at UB Paderborn"
  spec.license     = "MIT"

  spec.files = Dir["lib/**/*", "config/**/*", "MIT-LICENSE", "README.md"]

  spec.add_dependency "railties", ">= 6.0.0"
  spec.add_dependency "standard", ">= 0"
  spec.add_dependency "rubocop", ">= 0"
  spec.add_dependency "rubocop-performance", ">= 0"
  spec.add_dependency "rubocop-rails", ">= 0"
end
