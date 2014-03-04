require 'rake/testtask'

# Run all the tests in *_test.rb files in this directory.
Rake::TestTask.new do |t|
  t.libs << File.dirname(__FILE__)
  t.pattern = "*_test.rb"
end

task default: :test
