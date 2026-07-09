start_str="Music Begin"
end_str="Music End"

sed -n "/#EXTM3U/,/Radio/ { /#EXTM3U/d; /Radio/d; p }" music.m3u > in_between.m3u

sed -i 's/group-title="[^"]*"/group-title="Music"/g' in_between.m3u

sed -i "/$start_str/,/$end_str/ {
  /$start_str/! { /$end_str/! d }
  /$start_str/ r in_between.m3u
}" my.m3u

rm in_between.m3u
