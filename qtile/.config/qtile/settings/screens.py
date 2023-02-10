from libqtile import bar, widget
from libqtile.config import Screen

screens = [
    Screen(
        wallpaper='~/wallpapers/catalina-wallpaper.jpg',
        wallpaper_mode='fill',
        top=bar.Bar(
            [
				widget.Spacer(
                    length=30,
                    background='#1F1D2E',
                ),


                # First Separator
                widget.Image(
                    filename='~/.config/qtile/Assets/launch_Icon.png',
                    margin=2,
                    background='#1F1D2E',
                ),

                widget.Image(
                    filename='~/.config/qtile/Assets/6.png',
                ),


                # Second Separator
                widget.GroupBox(
                    fontsize=25,
                    borderwidth=3,
                    highlight_method='block',
                    active='#7F61A7',
                    block_highlight_text_color="#CFB3E5",
                    highlight_color='#4B427E',
                    inactive='#BD85CB',
                    foreground='#4B427E',
                    background='#4B427E',
                    this_current_screen_border='#52548D',
                    this_screen_border='#52548D',
                    other_current_screen_border='#52548D',
                    other_screen_border='#52548D',
                    urgent_border='#52548D',
                    rounded=True,
                    disable_drag=True,
                 ),

                widget.Image(
                    filename='~/.config/qtile/Assets/5.png',
                ),

                widget.CurrentLayoutIcon(
                    background='#52548D',
                    padding = 0,
                    scale = 0.5,
                ),

                widget.CurrentLayout(
                    background='#52548D',
                    font= 'JetBrains Mono Bold',
                ),

                widget.Image(
                    filename='~/.config/qtile/Assets/4.png',                
                ),

                widget.WindowName(
                    background = '#7676B2',
                    format = "{name}",
                    font='JetBrains Mono Regular',
                    empty_group_string = 'Desktop',
                    center_aligned= True
                ),

                #Third Separator
                widget.Image(
                    filename='~/.config/qtile/Assets/3.png',                
                ),   

                widget.Systray(
                    background='#52548D',
                    fontsize=2,
                ),

                widget.TextBox(
                    text=' ',
                    background='#52548D',
                ),


                widget.Image(
                    filename='~/.config/qtile/Assets/2.png',                
                    background='#52548D',
                ),                       
                                                
                widget.TextBox(
                    text='',
                    size=20,
                    font='JetBrains Mono Bold',
                    background='#4B427E',
                ),
                                
                widget.Battery(
                    format=' {percent:1.0%}',
                    font="JetBrains Mono ExtraBold",
                    fontsize=25,
                    padding=10,
                    background='#4B427E',
                ),                     
                 
               
                widget.Memory(format='﬙{MemUsed: .0f}{mm}',
                    font="JetBrains Mono Bold",
                    fontsize=25,
                    padding=10,
                    background='#4B427E',
                ),

                widget.TextBox(
                    text="",
                    font="Font Awesome 6 Free Solid",
                    fontsize=25,
                    padding=0,
                    background='#4B427E',
                ),
                
                widget.PulseVolume(
                    font='JetBrains Mono Bold',
                    fontsize=25,
                    padding=10,
                    background='#4B427E',
                ),                

                widget.Image(
                    filename='~/.config/qtile/Assets/1.png',                
                    background='#4B427E',
                ),
        
                widget.Clock(
                    format='  %R',
                    background='#1F1D2E',
                    font="JetBrains Mono Bold",
                ),

                widget.Spacer(
                    length=18,
                    background='#1F1D2E',
                ),
            ],
            40,
            margin = [6,6,6,6]
        ),
    ),
]
