require 'RustyGlob/version'
require 'fiddle'

module RustyGlob
  library = Fiddle.dlopen("#{File.dirname(__FILE__)}/../rust/target/release/librusty_dir_glob.#{lib_ext}")
  Fiddle::Function.new(library['initialize_dir'], [], Fiddle::TYPE_VOIDP).call
end