# -*- encoding: utf-8 -*-
require File.expand_path('../lib/droidcss/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "droidcss"
  s.version     = DroidCss::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ilya Gorenburg"]
  s.email       = ["ilya@droidlabs.pro"]
  s.homepage    = "https://github.com/droidlabs/droidcss"
  s.summary     = "Small responsive framework"
  s.description = "Small responsive framework"
  s.license     = 'MIT'

  s.add_dependency('sass', '~> 3.4')
  s.add_dependency('autoprefixer-rails', '~> 5.2')

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = 'lib'
end