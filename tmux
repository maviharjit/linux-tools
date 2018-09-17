tmux is just like screen but better

https://tmuxcheatsheet.com/

tmux
launch tmux

tmux shortcuts
^b c 
create a new window

^b , 
rename a window

^b $
rename current session

^b n 
goto next window

^b p 
goto previous winodow

^b w
list windows

^b %
split window vertically

^b "
split window horizontally

^b left/right/up/down
go to the pane on left/right/up/down

^b :
to give a named command

^b : split-window
splits window horizontally

sessions
--------------
tmux new -s backupsession
htop

^b d
detach from sesion

tmux list-sessions
lists all running sessions

tmux attach -t backupsession
