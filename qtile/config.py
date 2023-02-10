import os
import subprocess
from libqtile import hook
from settings.groups import groups
from settings.screens import screens
from settings.keybinds import mod, keys
from settings.layouts import layouts, floating_layout

@hook.subscribe.startup
def autostart():
    home = os.path.expanduser('~')
    #subprocess.Popen(["pavucontrol"])
    subprocess.Popen(["picom"])
    # AUTOSTART KEYBOARD TOGGLE
    subprocess.Popen([home + '/.config/qtile/autostart.sh'])
    # AUTOSTART GESTURES
    subprocess.Popen(["fusuma"])

widget_defaults = dict(
    font="sans",
    fontsize=23,
    padding=10
)

extension_defaults = [ 
    widget_defaults.copy() 
] 

'''
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]
'''

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = True # This settings makes the cursor follow the focused window
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True
wl_input_rules = None
wmname = "LG3D"
