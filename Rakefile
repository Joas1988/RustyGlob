require 'bundler/gem_tasks'
require 'thermite/tasks'

thermite = Thermite::Tasks.new(cargo_project_path: File.join(File.dirname(__FILE__), 'ext', 'RustyGlob'))

task default: %w(thermite:build)

desc 'Run testsuite'
task test: %w(thermite:build thermite:test) do
  test_file = File.join(File.dirname(__FILE__), 'spec', 'RustyGlob_spec.rb')
  ruby "#{test_file} #{thermite.config.ruby_extension_path}"
  spec test_file
end
