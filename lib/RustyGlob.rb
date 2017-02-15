require 'RustyGlob/version'
require 'thermite/fiddle'

module RustyGlob
  toplevel_dir = File.dirname(File.dirname(__FILE__))
  Thermite::Fiddle.load_module('init_rusty_blank',
                               cargo_project_path: File.join(toplevel_dir, 'ext/RustyGlob'),
                               ruby_project_path: toplevel_dir)
end
