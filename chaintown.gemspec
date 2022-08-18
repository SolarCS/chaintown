
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "chaintown/version"

Gem::Specification.new do |spec|
  spec.name          = "chaintown"
  spec.version       = Chaintown::VERSION
  spec.authors       = ["Marcin Ziolkowski", "Greg Bowman"]
  spec.email         = ["ziolmar@gmail.com", "gbowman@cipherhealth.com"]

  spec.summary       = 'Simple implementation of the pipeline or chain of command design pattern.'
  spec.description   = 'Simple implementation of the pipeline or chain of command design pattern.'
  spec.homepage      = 'https://github.com/solarcs/chaintown'
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.1"

  spec.add_dependency "activesupport", "~> 6.0"
end
