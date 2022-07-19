# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'relax2/androidmanagement/version'

Gem::Specification.new do |spec|
  spec.name          = 'relax2-androidmanagement'
  spec.version       = Relax2::Androidmanagement::VERSION
  spec.authors       = ['YusukeIwaki']
  spec.email         = ['q7w8e9w8q7w8e9@yahoo.co.jp']

  spec.summary       = 'Quick and dirty Android Management API client.'
  spec.homepage      = 'https://github.com/YusukeIwaki/relax2-androidmanagement-api'
  spec.license       = 'MIT'

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/}) || f.include?('.git')
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.7'
  spec.add_dependency 'relax2'
  spec.add_dependency 'googleauth'
end
