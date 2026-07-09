{ echo "#EXTM3U"; sed -n "/#EXTM3U/,/Radio/ { /#EXTM3U/d; /Radio/d; p }" music.m3u;  }  > my-music.m3u

sed -i 's/group-title="[^"]*"/group-title="Music"/g' my-music.m3u

