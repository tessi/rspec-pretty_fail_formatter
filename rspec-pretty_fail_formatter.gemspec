Gem::Specification.new do |s|
  s.name          = "rspec-pretty_fail_formatter"
  s.version       = '0.0.1'
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Philipp Tessenow"]
  s.email         = ["philipp@tessenow.org"]
  s.homepage      = "https://github.com/tessi/rspec-pretty_fail_formatter"
  s.summary       = %q{An rspec formatter which is concise on success and pretty on failures}
  s.description   = %q{An rspec formatter which is concise on success and pretty on failures}
  s.licenses      = ["MIT"]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'rspec', [">= 3.0.0"]
end
