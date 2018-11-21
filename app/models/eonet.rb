class Eonet
API_KEY = ENV["NASA_API_KEY"]
    
    
  ConfigHelper.load()
  def self.result()

    url = "https://eonet.sci.gsfc.nasa.gov/api/v2.1/events"
    params = {  
      count: 1
    }

    response = HTTP.get(url, params: params)
    response.parse
  end
end