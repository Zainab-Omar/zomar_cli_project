require 'open-uri'
require 'json'
require 'uri'
require 'net/http'
require 'openssl'
require 'pry'
input = gets.strip
url = URI("https://edamam-edamam-nutrition-analysis.p.rapidapi.com/api/nutrition-data?ingr=1%20cup%20of%20#{input}")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-host"] = 'edamam-edamam-nutrition-analysis.p.rapidapi.com'
request["x-rapidapi-key"] = 'fb1f202508mshe6df39a6ec4a438p18ba5bjsn03d1a1af341b'

 response = http.request(request)
 puts response.read_body

 
