require 'rake'

Gem::Specification.new do |s|
  s.name = %q{SimpleRubyApp}
  s.version = "1.0"
  s.authors = [""]
  s.email = %q{}
  s.summary = %q{A Simple Sinatra app}
  s.homepage = %q{}
  s.description = %q{A Sinatra App}
  s.files = FileList[ './lib/*.rb' ].to_a
end
