# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'malina/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'malina'
  s.version     = Malina::VERSION
  s.authors     = ['Renat "MpaK" Ibragimov']
  s.email       = ['mrak69@gmail.com']
  s.homepage    = 'https://github.com/mpakus/malina'
  s.summary     = 'Malina E-mails Rails Engine'
  s.description = 'an interface for browsing sent emails.'
  s.license     = 'MIT'

  s.metadata = {
    'changelog_uri'     => 'https://github.com/mpakus/malina/blob/master/CHANGELOG.md',
    'documentation_uri' => 'https://github.com/mpakus/malina',
    'homepage_uri'      => 'https://github.com/mpakus/malina',
    'source_code_uri'   => 'https://github.com/mpakus/malina'
  }

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.0.7', '>= 5.0.7.2'

  s.add_development_dependency 'combustion', '~> 1.1'
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop', '~> 0.49'
  s.add_development_dependency 'sqlite3', '~> 1.3.6'
end
