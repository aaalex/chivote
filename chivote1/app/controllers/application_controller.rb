class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

import requests as req
#The library we're using is called "requests".

#Put in the address here.
pre_address = "633 W Deming"

#This splits the address up and puts "+" between the words.
address = "+".join(pre_address.split()),

#This is a dictionary that makes latlng easier to write.
maps = {
  "site" : "http://maps.googleapis.com/maps/api/geocode/json",
  "demark" : "?",
  "params" : "address=%s,+Chicago,+IL&sensor=false" % (address),
  }

#Uses googlapis to get lat and lng of address.
latlng = req.get(maps["site"]+maps["demark"]+maps["params"]).json()["results"][0]["geometry"]["location"]
lat = latlng["lat"]
lng = latlng["lng"]

#This is a dictionary that makes trib_results easier to write.
trib = {
  "site" : "http://boundaries.tribapps.com/1.0/boundary/",
  "demark" : "?",
  "params" : "format=json&limit=100&contains=%s, %s" % (lat, lng),
  }

trib_results = req.get(trib["site"]+trib["demark"]+trib["params"]).json()

#Turns out that "slug" gives the information for each
#little plot; this is usually exactly what you want
#in terms of info about the address.
#We make a list of these things here.
address_data = [i["slug"] for i in trib_results["objects"]]

print pre_address
print address_data
