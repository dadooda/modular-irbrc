
#
# Modular `.irbrc` to (possibly) suit any sort of development environment.
#
# See https://github.com/dadooda/modular-irbrc for details.
#

# Oneliners.
def feature(name, &block); begin; yield; features << name; rescue Exception; end; end
def features; @features ||= []; end

#
# Your features. Please maintain alphabetical order.
#

feature "benchmark" do
  require "benchmark"
end

feature "irb/completion" do
  require "irb/completion"
end

feature "irb_hacks" do
  require "irb_hacks"
end

feature "method_source" do
  require "method_source"
end

feature "ori" do
  require "ori"
end

feature "rails_dt" do
  require "rails_dt"
end

feature "wirb" do
  require "wirb"
  Wirb.start
end

# Go!
if not features.empty?
  puts "IRB features: #{features.join(' ')}"
end

undef feature
undef features
