#!/bin/bash

#xsetwacom set "Wacom One by Wacom S Pen stylus" "Button" "2" "button +1 "
#xsetwacom set "Wacom One by Wacom S Pen stylus" "Button" "3" "button +2 "
## and set button 3 as gesture button in Easystroke

## double click in btn 2
#xsetwacom set "Wacom One by Wacom S Pen stylus" "Button" "2" "button 1 button 1 "

## one more option
#xsetwacom --set "Wacom One by Wacom S Pen stylus" Button 1 "button 1"
#xsetwacom --set "Wacom One by Wacom S Pen stylus" Button 3 "button 2"
#xsetwacom --set "Wacom One by Wacom S Pen stylus" Button 2 "button 1 button 1"

## my actual case:
## set btn 2 as btn 9
xsetwacom --set "Wacom One by Wacom S Pen stylus" Button 2 "button +9 "
## after that set this btn in Easystroke as gesture button,
## actions: 1 drag scroll scroll
