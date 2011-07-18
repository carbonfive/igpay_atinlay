require 'bundler/gem_tasks'

require 'rake/testtask'
Rake::TestTask.new do |test_task|
  test_task.test_files = FileList['test/*_test.rb']
  test_task.verbose = true
end

task :default => :test
