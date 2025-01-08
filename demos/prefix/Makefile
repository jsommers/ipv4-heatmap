all: test.png

test.png: data.txt
	../../ipv4-heatmap \
	  -s rfc1918.shades \
	  -a iana-labels.txt \
	  -A 1 \
	  -B 255 \
	  -f /usr/X11R6/lib/X11/fonts/TTF/luximr.ttf \
	  -c 0x333333 \
	  -t "title" \
	  -p \
	  -h \
	  -P \
	  -u "legend" \
	  < data.txt
	mv map.png $@

clean:
	rm *.png
