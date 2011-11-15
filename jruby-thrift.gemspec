# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jruby-thrift}
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Evan Dowling", "Tobias Schlottke"]
  s.date = %q{2011-11-15}
  s.description = %q{jruby-thrift is a gemified thrift binding what uses the java Thrift classes rather than a pure
                     ruby implementation.  It was developed to support the hyper_record gem and as such is not as 
                     thoroughly tested as it should be. Caveat Emptor}
  s.email = %q{dowling.evan@gmail.com tobias.schlottke@gmail.com}
  s.extra_rdoc_files = []

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.homepage = %q{http://github.com/evandowling/jruby-trhift}
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Thrift binding for jruby using the Java thrift bindings in place of native extensions.}
  
  # use buildr for jar packaging
  s.add_development_dependency 'buildr'
  
  
end
