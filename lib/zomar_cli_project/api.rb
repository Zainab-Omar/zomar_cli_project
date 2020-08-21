require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'open-uri'
require 'pry'

class Api_Data
    def self.get_data
  url = URI("https://edamam-edamam-nutrition-analysis.p.rapidapi.com/api/nutrition-data?ingr=1%20large%20")
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  request = Net::HTTP::Get.new(url)
  request["x-rapidapi-host"] = 'edamam-edamam-nutrition-analysis.p.rapidapi.com'
  request["x-rapidapi-key"] = 'fb1f202508mshe6df39a6ec4a438p18ba5bjsn03d1a1af341b'

  response = http.request(request)
  result= response.read_body
  parsed_data =JSON.parse(result)
         
     end
     binding.pry
end