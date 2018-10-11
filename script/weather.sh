temp=$( curl 'http://wttr.in/clermont-ferrand?0&Q&T' 2>/dev/null|grep C|awk '{ print $(NF-1) }' )

echo -n "weather,city=clermont-ferrand temp=$temp"
