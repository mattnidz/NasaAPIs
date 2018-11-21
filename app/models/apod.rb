class Apod 

  ConfigHelper.load()
API_KEY = ENV["NASA_API_KEY"]
    
    
  

  def self.result()

    url = "https://api.nasa.gov/planetary/apod?api_key=#{API_KEY}"
    params = {  
      count: 5
    }

    response = HTTP.get(url, params: params)
    response.parse
  end
end