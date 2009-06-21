PROJECT_ROOT = File.expand_path( File.join( File.dirname(__FILE__), '/..') )
class Application < Sinatra::Application
  
  set :views, "#{PROJECT_ROOT}/lib/views"
  
  get '/' do
    haml :index, {:layout => :"layouts/application"}
  end
  
end
