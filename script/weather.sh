if [ -z "$FORCE_TEMP" ]
then
  temp=$( curl 'http://wttr.in/clermont-ferrand?0&Q&T' 2>/dev/null|grep C|awk '{ print $(NF-1) }'|cut -d'.' -f1)
else
  temp=$FORCE_TEMP
fi

echo -n "weather,city=clermont-ferrand temp=$temp"
