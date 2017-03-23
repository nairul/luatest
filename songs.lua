#!/usr/bin/env wsapi.cgi

local orbit = require"orbit"
-- local orcache = require "orbit.cache"
local cosmo = require"cosmo"

local songs = orbit.new()
-- local luasql = require("luasql." .. database.driver)
-- local env = luasql[database.driver]()
-- mapper.conn = env:connect(unpack(database.conn_data))
-- mapper.driver = database.driver

function songs.index(web)
   local songlist = {
      "Giant Steps - John Coltrane",
      "Freddie Freeloader - Miles Davis",
      "Syeeda's Songflute - John Coltrane",
      "Blue Train - John Coltrane"
   }
   local applelist = {
      "https://www.youtube.com/embed/30FTr6G53VU",
      "https://www.youtube.com/embed/RPfFhfSuUZ4",
      "https://www.youtube.com/embed/dN9MMnQyAp8",
      "https://www.youtube.com/embed/S1GrP6thz-k"
   }
   -- local t = {}
   -- t["Giant Steps"] = "https://www.youtube.com/watch?v=30FTr6G53VU"
   return songs.layout(songs.render_index({ 
    songs = songlist,
    apples = applelist,
   }))
end

songs:dispatch_get(songs.index, "/")

function songs.layout(inner_html)
  return html{
    head{ title"Adam's Jazz" },
    body{ inner_html }
  }
end

orbit.htmlify(songs, "layout")

songs.render_index = cosmo.compile[[
	 <h1>Adam's Favorite Jazz</h1>
	    <table>
	    $songs[=[<tr><td>$it</td></tr>]=]
	    </table>
  <h1>Videos</h1>
      <table>
      $apples[=[<tr><td><iframe width="560" height="315" src=$it frameborder="0" allowfullscreen></iframe></td></tr>]=]
      </table>
      ]]
return songs.run
