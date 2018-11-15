class ApplicationController < ActionController::Base

require 'httpclient' #Cでいうinclude

    def http_get(query,url)

        client = HTTPClient.new
        client.debug_dev = $stderr

        res = client.get(url, :query => query, :follow_redirect => true)

        return res.body
    end

end
