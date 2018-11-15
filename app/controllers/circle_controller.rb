class CircleController < ApplicationController
  def index
    @word=params["q"]

    query = "q=#{@word}"
    url = "http://127.0.0.1:4000/circles"
    @circle_data = http_get(query,url)

    p @circle_data
  end

  def show
  end
end
