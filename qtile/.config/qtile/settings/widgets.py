from libqtile import widget
from .theme import colors

font = "CaskaydiaCove Nerd Font"


def base(fg='text', bg='dark'):
    return {
        'foreground': colors[fg],
        'background': colors[bg]
    }


def separator():
    return widget.Sep(**base(), linewidth=0, padding=5)


def icon(fg='text', bg='dark', fontsize=24, text="?"):
    return widget.TextBox(
        **base(fg, bg),
        fontsize=fontsize,
        text=text,
        padding=3
    )


def powerline(fg="light", bg="dark", fontsize=56, padding=-7):
    return widget.TextBox(
        **base(fg, bg),
        text="",  # Icon: nf-oct-triangle_left
        fontsize=fontsize,
        padding=padding,
        font=font
    )


def workspaces(icon_fontsize=27, window_name_font_size=24):
    return [
        separator(),
        widget.GroupBox(
            **base(fg='light'),
            font=font,
            fontsize=icon_fontsize,
            margin_y=3,
            margin_x=0,
            padding_y=8,
            padding_x=5,
            borderwidth=1,
            active=colors['active'],
            inactive=colors['inactive'],
            rounded=False,
            highlight_method='block',
            urgent_alert_method='block',
            urgent_border=colors['urgent'],
            this_current_screen_border=colors['focus'],
            this_screen_border=colors['grey'],
            other_current_screen_border=colors['dark'],
            other_screen_border=colors['dark'],
            disable_drag=True
        ),
        separator(),
        widget.WindowName(**base(fg='focus'), fontsize=window_name_font_size, padding=5),
        separator(),
    ]


def primary_widgets():
    return [
        *workspaces(),

        separator(),

        # powerline('color1', 'dark'),

        widget.Memory(**base(bg='color1'), format=' {MemUsed: .0f}{mm} ', font=font, fontsize=25,
                      padding=10),

        # powerline('color2', 'color1'),

        widget.CurrentLayoutIcon(**base(bg='color2'), scale=0.65),

        widget.CurrentLayout(**base(bg='color2'), fmt='{}  ', font=font),

        # powerline('color1', 'color2'),

        widget.Clock(**base(bg='color1'), format='%d/%m/%Y -  %H:%M '),

        # powerline('dark', 'color1'),

        widget.Systray(background=colors['dark']),
    ]


def secondary_widgets():
    return [
        *workspaces(),

        separator(),

        widget.CurrentLayoutIcon(**base(bg='color1'), scale=0.65),

        widget.CurrentLayout(**base(bg='color1'), fmt='{}  ', padding=5, font=font),

        widget.Clock(**base(bg='color2'), format='%d/%m/%Y - %H:%M '),
    ]


widget_defaults = {
    'font': font,
    'fontsize': 24,
    'padding': 1,
}

extension_defaults = widget_defaults.copy()
