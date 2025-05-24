EXT="DisplayPort-0"

if xrandr | grep -q "^${EXT} connected"; then
  autorandr --load docked
else
  autorandr --load default
fi
