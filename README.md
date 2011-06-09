Leftronic
=========
A simple interface for the Leftronics dashboard

Leftronics is a dashboard-as-a-service. It supports five custom data update types:

 * leaderboard(name, entries)
 * list(name, entries)
 * map(name, latitude, longitude)
 * number(name, number)
 * text(name, title, text)

Example Usage
=============

    require 'leftronic'
    dashboard = Leftronic.new("my-leftronic-api-key")
    dashboard.leaderboard("top_deployed", [{"engine" => 200}, {"mockr" => 15}, {"fatfreecrm" => 59}])
    dashboard.list("recently_deployed", ["locomotive-cms", "locomotive-cms", "redmine"])
    dashboard.map("currently_signed_in", -81.98, 11.70)
    dashboard.number("app_count", 5000)
    dashboard.text("MongoDB Server up")

License:

MIT