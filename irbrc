#!/usr/bin/ruby
require 'irb/completion'
require 'irb/ext/save-history'
 
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
 
IRB.conf[:PROMPT_MODE] = :SIMPLE

# looksee/shortcuts ??
%w[rubygems wirble hirb].each do |gem|
  begin
    require gem
  rescue LoadError
  end
end

Wirble.init
Wirble.colorize

# pretty print
# require 'pp'
 
Hirb.enable
puts "Hirb enabled (disable with Hirb.disable)"

#console logging 
script_console_running = ENV.include?('RAILS_ENV') && IRB.conf[:LOAD_MODULES] && IRB.conf[:LOAD_MODULES].include?('console_with_helpers')
rails_running = ENV.include?('RAILS_ENV') && !(IRB.conf[:LOAD_MODULES] && IRB.conf[:LOAD_MODULES].include?('console_with_helpers'))
irb_standalone_running = !script_console_running && !rails_running

if script_console_running
  require 'logger'
  Object.const_set(:RAILS_DEFAULT_LOGGER, Logger.new(STDOUT))
end

IRB.conf[:PROMPT_MODE] = :DEFAULT