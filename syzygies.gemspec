# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'syzygies/version'

Gem::Specification.new do |spec|
  spec.name          = "syzygies"
  spec.version       = Syzygies::VERSION
  spec.authors       = ["Roman C. Podolski"]
  spec.email         = ["roman.podolski@tum.de"]
	spec.homepage      = "https://rubygems.org/gems/syzygies"

  spec.summary       = %q{A word puzzle}
  spec.description   = %q{ This is a simplification of a word puzzle created by the English polymath Lewis Caroll where the player is given a start word (e.g. WHITE) and a goal word (e.g. GREEN).  One must conduct a chain of words, where, for adjacent words in the chain either the first two letters of one word are the last two letters of the next word, or the last two letters last two letters of one word are the first two letters of the next word.  }
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  #spec.executables   << 'syzygies'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
