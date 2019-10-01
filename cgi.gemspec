lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cgi/version"

Gem::Specification.new do |spec|
  spec.name          = "cgi"
  spec.version       = CGI::VERSION
  spec.authors       = ["Hiroshi SHIBATA"]
  spec.email         = ["hsbt@ruby-lang.org"]

  spec.summary       = %q{Support for the Common Gateway Interface protocol.}
  spec.description   = %q{Support for the Common Gateway Interface protocol.}
  spec.homepage      = "https://github.com/ruby/cgi"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
