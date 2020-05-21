require 'net/http'
require 'open-uri'
require 'json'

class GetRequester 
  
  attr_accessor :url
  
  def initialize(url)
    @url = url
  end 
  
  def get_response_body
    
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
    
  end 
   
  def parse_json 
    
    h = JSON.parse(get_response_body)
    h.collect do |test|
      h["a"]
    end 
    
  end 
    
  
    
  
  
  
  
end 
