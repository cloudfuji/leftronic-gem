Leftronic
=========
A simple interface for the Leftronics dashboard

Leftronics is a dashboard-as-a-service. It supports five custom data update types:

 * leaderboard(name, entries)
 * list(name, entries)
 * map(name, latitude, longitude)
 * number(name, number)
 * text(name, title, text)

Installation
============

    gem install leftronic

Example Usage
=============

    require 'rubygems' # Not necessary in ruby 1.9.2
    require 'leftronic'
    dashboard = Leftronic.new("my-leftronic-api-key")
    dashboard.leaderboard("top_deployed", [{"engine" => 200}, {"mockr" => 15}, {"fatfreecrm" => 59}])
    dashboard.list("recently_deployed", ["locomotive-cms", "locomotive-cms", "redmine"])
    dashboard.map("currently_signed_in", -81.98, 11.70)
    dashboard.number("app_count", 5000)
    dashboard.text("MongoDB Server up")


TODO
====

 * Accept a block for Leftronic#leaderboard and Leftronic#list to have better control over how the top 12 get picked
 * Change Leftronic#leaderboard entries format from [{:a => "0"}, {:b => "1"}] to {:a => "0", :b => "1"}

LICENSE
=======
MIT
