for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m bash ~/.config/polybar/launch.sh --forest &
done
