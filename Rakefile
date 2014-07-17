require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

ENV['APP_PATH']='com.healthwyse.poc.apk'
ENV['TEST_APP_PATH']='test_servers/a5907ae5dcc988849a44432c283890b6_0.5.1.apk'
ENV['RESET_BETWEEN_SCENARIOS']='0'

Cucumber::Rake::Task.new(:run) do |t|
  t.cucumber_opts = [ 
    '--format "Slowhandcuke::Formatter"',
    '--format html -o target/results.html',
    '*/*.feature' ]
end

Cucumber::Rake::Task.new(:json) do |t|
  t.cucumber_opts = [ 
    '--format "Slowhandcuke::Formatter"',
    '--format json -o target/results.json',
    '*/*.feature' ]
end

Cucumber::Rake::Task.new(:html) do |t|
  t.cucumber_opts = [ 
    '--format "Slowhandcuke::Formatter"',
    '--format html -o target/results.html',
    '*/*.feature' ]
end

Cucumber::Rake::Task.new(:login) do |t|
  t.cucumber_opts = [ 
    '--format "Slowhandcuke::Formatter"',
    '--format html -o target/results.html',
    '*/*.feature',
    '--tags', '@login' ]
end

Cucumber::Rake::Task.new(:logout) do |t|
  t.cucumber_opts = [ 
    '--format "Slowhandcuke::Formatter"',
    '--format html -o target/results.html',
    '*/*.feature',
    '--tags', '@logout' ]
end