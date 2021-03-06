# frozen_string_literal: true

require_relative 'lib/spotibox/version'

Gem::Specification.new do |spec|
  spec.name          = 'spotibox'
  spec.version       = Spotibox::VERSION
  spec.authors       = ['Nikolay Kotsev']
  spec.email         = ['nikolay.t.kotzev@gmail.com']

  spec.summary       = "A sandbox to play around with Spotify's api"
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.0')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added
  # into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{\A(?:test|spec|features)/})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'rspotify'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
