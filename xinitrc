[KeyLayout]
layout="at,il"
model=pc104
option=grp:lwin_toggle
shotcutConvert=
showflag=false
showsingle=false
status=2
switching=0
useConvert=false
variant=","

xautolock -time 5 -locker "i3lock -c 000000" &
xset +dpms dpms 20 100 &
exec startlxde