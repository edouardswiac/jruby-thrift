require 'rubygems'
require 'bundler/gem_tasks'
require 'rake'
require 'rake/testtask'

task :test => ['test:units']

namespace :test do
  Rake::TestTask.new(:units) do |t|
    t.libs << "test"
    t.test_files = FileList['test/units/**/*_test.rb']
    t.verbose = true
  end
end

task :default => [ :test ]
