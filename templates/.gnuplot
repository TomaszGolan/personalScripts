set macro

color1 = "#2C323D"
color2 = "#5A8677"
color3 = "#F05526"
color4 = "#DA1F2F"
color5 = "#3482BE"
color6 = "#FFB136"

grid_color = "#4C6472"
text_color = "#2C323D"

my_line_width = "2.5"
my_axis_width = "2"
my_ps = "1.0"

set bar 0

#set terminal postscript eps enhanced color
#set terminal cairolatex

#set style data linespoints
#set style function lines
set pointsize my_ps

set style line 1 linecolor rgbcolor color1 linewidth @my_line_width lt 1 pt 7
set style line 2 linecolor rgbcolor color2 linewidth @my_line_width lt 2 pt 5
set style line 3 linecolor rgbcolor color3 linewidth @my_line_width lt 4 pt 13
set style line 4 linecolor rgbcolor color4 linewidth @my_line_width lt 3 pt 9

set style increment user
set style arrow 1 filled

#set style fill solid 0.5

#set size noratio
#set samples 300

set border 31 lw @my_axis_width lc rgb text_color

set grid lc rgb grid_color
set key box width 4 height 2 enhanced spacing 1.5 samplen 3
