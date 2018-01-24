## bbswitch-widget

bumblebee indicator for the awesome window manager. Displays the state of the discrete GPU (ON/OFF).

Requires bumblebee, bbswitch and nvidia.

### Installation

Clone this repo into your awesome config folder:

```bash
cd ~/.config/awesome
git clone https://github.com/alterationbrick/bbswitch-widget.git
```

In your rc.lua:

```lua
-- import the widget
local bbswitch = require("bbswitch-widget.bbswitch")

-- create a textbox widget
bbswitchwidget = wibox.widget.textbox()

-- add this textbox widget to the wibox
{ -- Right widgets
	...
	bbswitchwidget,
	...
}

-- add a timer to update the widget
bbswitch_timer:connect_signal("timeout", function()
	bbswitchwidget:set_text(getState())
end)
bbswitch_timer:start()
```

