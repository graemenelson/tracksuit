PROJECT_ROOT = File.expand_path( File.join( File.dirname(__FILE__), '/..') )
class Application < Sinatra::Application
  
  #
  # Configuration
  #
  set :views, "#{PROJECT_ROOT}/lib/views"
  
  configure :development do 
    use Rack::Reloader 
  end
  
  #
  # Routes
  #
  get '/' do
    haml :index, {:layout => :"layouts/application"}
  end
  
  
end
