#!/bin/bash
# Modified source: based on https://gitlab.com/Nmoleo/i3-volume-brightness-indicator
# Updated to use brightnessctl instead of xbacklight

bar_color="#7f7fff"
volume_step=1
brightness_step=5
max_volume=100

# Uses regex to get volume from pactl
function get_volume {
    pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]{1,3}(?=%)' | head -1
}

# Uses regex to get mute status from pactl
function get_mute {
    pactl get-sink-mute @DEFAULT_SINK@ | grep -Po '(?<=Mute: )(yes|no)'
}

# Retrieves current brightness as a percentage using brightnessctl
function get_brightness {
    current=$(brightnessctl get)
    max=$(brightnessctl max)
    # Calculate and output percentage brightness (integer arithmetic)
    echo $(( current * 100 / max ))
}

# Returns a mute icon, a volume-low icon, or a volume-high icon, depending on the volume
function get_volume_icon {
    volume=$(get_volume)
    mute=$(get_mute)
    if [ "$volume" -eq 0 ] || [ "$mute" == "yes" ] ; then
        volume_icon=""
    elif [ "$volume" -lt 50 ]; then
        volume_icon=""
    else
        volume_icon=""
    fi
}

# Always returns the same icon - brightness icon
function get_brightness_icon {
    brightness_icon=""
}

# Displays a volume notification using notify-send
function show_volume_notif {
    volume=$(get_volume)
    get_volume_icon
    notify-send -i audio-volume-muted -t 1000 "Volume" "$volume_icon  $volume%" -h int:value:$volume -h string:x-canonical-private-synchronous:volume
}

# Displays a brightness notification using notify-send
function show_brightness_notif {
    brightness=$(get_brightness)
    get_brightness_icon
    notify-send -i display-brightness-symbolic -t 1000 "Brightness" "$brightness_icon  $brightness%" -h int:value:$brightness -h string:x-canonical-private-synchronous:brightness
}

# Main function - Takes user input: "volume_up", "volume_down", "volume_mute", "brightness_up", or "brightness_down"
case $1 in
    volume_up)
        # Unmutes and increases volume, then displays the notification
        pactl set-sink-mute @DEFAULT_SINK@ 0
        volume=$(get_volume)
        if [ $(( volume + volume_step )) -gt $max_volume ]; then
            pactl set-sink-volume @DEFAULT_SINK@ $max_volume%
        else
            pactl set-sink-volume @DEFAULT_SINK@ +${volume_step}%
        fi
        show_volume_notif
        ;;
        
    volume_down)
        # Lowers volume and displays the notification
        pactl set-sink-volume @DEFAULT_SINK@ -${volume_step}%
        show_volume_notif
        ;;
        
    volume_mute)
        # Toggles mute and displays the notification
        pactl set-sink-mute @DEFAULT_SINK@ toggle
        show_volume_notif
        ;;
        
    brightness_up)
        # Increases brightness using brightnessctl and displays the notification
        brightnessctl set +${brightness_step}% 
        show_brightness_notif
        ;;
        
    brightness_down)
        # Decreases brightness using brightnessctl and displays the notification
        brightnessctl set ${brightness_step}%- 
        show_brightness_notif
        ;;
esac

