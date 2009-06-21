require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Application do
  
  describe 'GET /' do
    
    before( :each ) do
      get '/'
    end
    
    it "should return a ok status" do
      last_response.should be_ok
    end
    
    it "should display the index.haml" do
      last_response.body.include?( "<div class=\"title\">Hello there!</div>")
    end
    
  end
  
end