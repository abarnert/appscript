require "rubygems"

spec = Gem::Specification.new do |s|
	s.name = "macruby-appscript"
	s.version = "0.1.0"
	s.homepage = "http://appscript.sourceforge.net/rb-appscript"
	s.summary="MacRuby appscript (rb-appscript) is a high-level, user-friendly Apple event bridge that allows you to control scriptable Mac OS X applications using ordinary MacRuby scripts."
	s.files = Dir["**/*"]
#	s.test_files = Dir["test/test_*.rb"]
	s.platform = Gem::Platform::RUBY
	s.required_ruby_version = ">= 1.9"
	s.requirements << 'objc-appscript'
end

if $0==__FILE__
	Gem::manage_gems
	Gem::Builder.new(spec).build
end
