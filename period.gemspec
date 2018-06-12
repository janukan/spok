# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'period/version'

Gem::Specification.new do |spec|
  spec.name          = 'period'
  spec.version       = Period::VERSION
  spec.authors       = ['Magnetis Staff']
  spec.email         = ['dev@magnetis.com.br']
  spec.summary       = 'A gem to work with periods of dates'
  spec.description   = %q{
    Work with period of dates in a easy way.
    This gem provides functionalities like workdays, date as string and period to calendars.
  }
  spec.homepage      = 'https://github.com/magnetis/period'
  spec.license       = 'Apache 2.0'

  spec.files         = Dir['**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '~> 5.1.3'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 2'
end
