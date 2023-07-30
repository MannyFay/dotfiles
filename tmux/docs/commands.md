# tmux
My `ctrl` key is mapped to `caps lock` key by Karabiner-Elements app.
Because I'm using Neovim editor the most, I switch the case of letters with 
Neovims `~` command.

`<prefix>` in the command list means, you have to press `ctrl` `a`.

Tmux allows only single sequence commands, but I've tried to get it to my
Neovim commands as closed I can.

Plugins Manager:  
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

<br>

## Sessions
| Command                        | Function                                         |
|:------------------------------:|:-------------------------------------------------|
| tmux                           | Start Tmux                                       |
| tmux new -s \<session-name>    | Start new Tmux session with name \<session-name> |
| tmux detach                    | Exit Tmux                                        |
| tmux ls                        | List all Tmux sessions (Tmux has to be started)  |
| tmux attach -t \<session-name> | Go back into session \<session-name>             |
| `<prefix>` `s`                 | Choose a created session                         |
| `k`                            | Navigate session list up                         |
| `j`                            | Navigate session list down                       |
| `enter`                        | Open selected session                            |
| `<prefix`> `:`                 | Enter command mode                               |

<br>

## Panes
| Command        | Function                 |
|:--------------:|:-------------------------|
| `<prefix>` `v` | Open vertical pane       |
| `<prefix>` `h` | Open horizontal pane     |
| exit           | Close pane               |
| `<prefix>` `h` | Go to left pane          |
| `<prefix>` `l` | Go to right pane         |
| `<prefix>` `j` | Go to pane below         |
| `<prefix>` `k` | Go to pane above         |
| `<prefix>` `k` | (inactive) Shrink pane horizontally |
| `<prefix>` `j` | (inactive) Grow pane horizontally   |
| `<prefix>` `h` | (inactive) Shrink pane vertically   |
| `<prefix>` `l` | (inactive) Grow pane vertically     |
| `<prefix>` `m` | Maxi/Minimize pane       |

<br>

## Windows
| Command               | Function               |
|:---------------------:|:-----------------------|
| `<prefix>` `c`        | Create new window      |
| `<prefix>` `q`        | Quit actual window     |
| `<prefix>` `<number>` | Go to window \<number> |
| `<prefix>` `n`        | Go to next window      |
| `<prefix>` `p`        | Go to previous window  |
| `<prefix>` `r`        | Rename actual window   |
| `<prefix>` `w`        | List all windows       |
| `swap-window -s <start-index> -t <target-index>`
<br>

## Vi Mode (Copy Mode)
| Command        | Function            |
|:--------------:|:--------------------|
| `<prefix>` `c` | Start copy mode     |
| `ctrl` `c`     | Exit copy mode      |
| `shift` `j`    | Scroll down         |
| `shift` `k`    | Scroll up           |
| `ctrl` `u`     | Go up half a page   |
| `ctrl` `d`     | Go down half a page |
| `ctrl` `b`     | Go up a full page   |
| `ctrl` `f`     | Go down a full page |
| `v`            | Enter visual mode   |
| `y`            | Yank                |

<br>

# Plugins
| Command        | Function             |
|:--------------:|:---------------------|
| `<prefix>` `I` | Install tmux plugins |

