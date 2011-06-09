require 'rest-client'
require 'json'

class Leftronic
  attr_accessor :url, :api_key

  def push(name, data_point)
    payload =
      {"accessKey" => @api_key,
      "streamName" => name,
      "point" => data_point
    }

    return RestClient.post(@url, payload.to_json)
  end #:nodoc:


  def initialize(api_key, url = "https://beta.leftronic.com/customSend/")
    @api_key = api_key
    @url = url
  end

  # Push a number datapoint
  def number(name, number)
    push(name, number)
  end


  # Push a map datapoint
  def map(name, latitude, longitude)
    push(name, {"latitude" => latitude, "longitude" => longitude})
  end

  
  # Push a text update
  def text(name, title, text)
    push(name, {"title" => title, "msg" => text})
  end

  # Push a new leaderboard
  # Entries is a hash of the form {:key_name_1 => :value, :key_name_2 => :value}
  def leaderboard(name, entries)
    values = []

    entries.each do |hash|
      hash.each_pair do |key, value|
        values << {"name" => key, "value" => value}
      end
    end

    puts ({"leaderboard" => values}.inspect)
    push(name, {"leaderboard" => values})
  end


  # Push a list
  # Entries is simply an array
  def list(name, entries)
    values = entries.collect do |item|
      {"listItem" => item}
    end

    push(name, {"list" => values})
  end
end
