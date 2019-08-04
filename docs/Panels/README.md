# Panels

A "Panel" is a static image that may be overlaid with numbers or tokens. They can be used for static title screens, basic menus, and UI displays in game.

## Panel display considerations

A Scorpion panel may be assigned to one of three areas.

* The top of the screen. Assign here with "~panel_top"
* The bottom of the screen. Assign here with "~panel_bottom"
* The center of screen. Assign here with "~panel"

When assigning to the top of the screen, the panel will "push down" the game display by the height of the panel, with a gap of 4 pixels.

When assigning to the bottom of the screen, the panel may consume part of the bottom of the game display. There will be at least a gap of 4 pixels between the bottom panel and the game display.

The game display is a maximum of 212 pixels high, and will not extend further down past this. But this leaves a gap of 40 pixels underneath where a bottom panel can be assigned without consuming the game area. Thus, we recommend setting your UI to the bottom of the screen, but you may still use the top of the sreen if required.

When assigning with ~panel to the center of the screen, you will not have any of the game area viewable.

## Declaring a panel

Declare a panel in project.txt like so.

> [panel (panelname)]

### Source

> source=path/to/source/image.png

Simply the source image. This must be an indexed PNG with 32 colors or less.

### FadeIn | FadeOut

> fadein=time

The time that a panel takes to fade in when loaded, and fade out when unloaded, in seconds.

### icon

> icon=path/to/icon.png

If this panel is for an options menu, define the icon (cursor) here.

### option1 | option2 | option3 etc

> option1=0:0

IF this panel is for an options menu, define the x/y location to show the cursor for every option.


## Panel Elements

A panel may be configured to show one or more "elements", which are digits, or icons, that reflect a variable value. These could be used for life tokens, a score counter, or to show what items your character has equipped.

Declare a panel element in project.txt like so

> [panelelement (panelname):(variablename)]

### NumberFont

> numberfont=numberfontName

Set NumberFont if you wish to display the variable name as a number. Setting the digits is also a requirement.

### Digits

> digits=3

Set the number of digits to display. For example, if you have a maximum of 99 lives in your game, you could set this to 2 for the lives display.

### Counter1 | Counter2

> counter1=path/to/counter1.png

If you're using an icon to show the number of (for example) lives you have, set the Counter1 property.

Counter2 can also be used if (for example) you have half hearts and full hearts.

### Counter1Animation | Counter2Animation

> counter1animation=animationName

Used for showing an animation when the counter variable increases by 1. Likewise, this can be done for increases of 2.

### Icon

> icon=path/to/icon.png

Used for simply showing an icon if a variable is true (non-zero), regardless of how high that variable is. For example, if you've got multiple bombs, you may just wish to show one bomb icon.

### X | Y

> x=0

Used to set where the Counter/Icon/NumberFont is blitted to on the panel

### XSpacing | YSpacing

> xspacing=20

When Counters are used, use XSpacing or YSpacing to set the distance between each individual counter.


# [Back to Table of Contents](../README.md)
