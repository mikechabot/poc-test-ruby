require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

ENV['APP_PATH']='com.healthwyse.poc.apk'
ENV['TEST_APP_PATH']='test_servers/a5907ae5dcc988849a44432c283890b6_0.5.1.apk'
ENV['RESET_BETWEEN_SCENARIOS']='0'
ENV['SCREENSHOT_PATH']= 'screenshots/'

features = '*/*.feature'
slowhand = '--format "Slowhandcuke::Formatter"'
html = '--format html -o target/results.html'
json = '--format json -o target/results.json'

Cucumber::Rake::Task.new(:run) do |t|
  t.cucumber_opts = [ features, slowhand, html ]
end

Cucumber::Rake::Task.new(:json) do |t|
  t.cucumber_opts = [ features, slowhand, json ]
end

Cucumber::Rake::Task.new(:login) do |t|
  t.cucumber_opts = [ features, slowhand, html, 
    '--tags', '@login,@logout' ]
end

Cucumber::Rake::Task.new(:invalidLogin) do |t|
  t.cucumber_opts = [ features, slowhand, html, 
    '--tags', '@invalid,@locked' ]
end

Cucumber::Rake::Task.new(:sync) do |t|
  t.cucumber_opts = [ features, slowhand, html, 
    '--tags', '@multi,@single' ]
end