# Write your code here

require 'net/http'
require 'open-uri'
require 'json'


class GetRequester
    def initialize(url)
        @url = url
    end

    def get_response_body
        # Sends a get request from @url
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body 
    end

    def parse_json
        thing = JSON.parse(self.get_response_body)
        thing
    end

end