#!/usr/bin/env ruby

time = Time.now
hour = time.hour
min = time.min
hour = 18
x = Math::PI*(hour + min/60.0)/12.0

red = 40 + 10*Math.cos(x)
green = 40
blue = 40 - 10*Math.cos(x)

hex = "#{red.to_i.to_s(16)}"
hex << "#{green.to_i.to_s(16)}"
hex << "#{blue.to_i.to_s(16)}"

# uncomment this line to generate random colours to check it's working
# hex = 3.times.map { (255*rand).to_i.to_s(16) }.join("")

cmd = "convert -size 1920x1080 xc:\##{hex} /home/chris/pictures/wallpaper.png"
`#{cmd}`

cmd = "DISPLAY=:0 feh --bg-scale /home/chris/pictures/wallpaper.png"
`#{cmd}`
