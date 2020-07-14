require_relative 'lib/test_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = "test_wrapper"
  spec.version       = TestWrapper::VERSION
  spec.authors       = ["Taikon"]
  spec.email         = ["davidma100@gmail.com"]

  spec.summary       = %q{API wrapper around animatedgif.me}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/Taikon/test_wrapper"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Taikon/test_wrapper"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'httparty', '~> 0.18.1'
end
