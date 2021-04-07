if [ -z "$FORCE_TEMP" ]
then
  if [ -z "$RANDOM_TEMP" ]
  then
    temp=$( curl 'http://wttr.in/clermont-ferrand?0&Q&T' 2>/dev/null|grep C|tail -n1|awk '{ print $(NF-1) }'|cut -d'.' -f1|sed -e 's/^\([+-]*[0-9]*\).*$/\1/')
  else
    temp=$(( $RANDOM % 30 ))
  fi
else
  temp=$FORCE_TEMP
fi

echo -n "weather,city=clermont-ferrand temp=$temp"
