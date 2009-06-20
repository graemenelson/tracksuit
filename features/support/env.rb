require 'cucumber/formatter/unicode'
require 'webrat/core/matchers'
require 'spec/expectations'


require 'webrat'
Webrat.configure do |config|
  config.mode = :sinatra
end

World do
  session = Webrat::SinatraSession.new
  session.extend(Webrat::Matchers)
  session.extend(Webrat::HaveTagMatcher)
  session
end