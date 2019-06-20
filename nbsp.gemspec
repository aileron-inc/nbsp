lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nbsp/version'

Gem::Specification.new do |spec|
  spec.name          = 'nbsp'
  spec.version       = Nbsp::VERSION
  spec.authors       = ['aileron']
  spec.email         = ['aileron.cc@gmail.com']

  spec.summary       = 'Made &nbsp; a method'
  spec.description   = 'When writing html template with "Rails", provide helper method to be used when adjusting small margin using nbsp'
  spec.homepage      = "https://github.com/aileron-inc/nbsp/"
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_dependency 'actionpack'
end
