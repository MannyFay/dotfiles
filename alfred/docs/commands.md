# Alfred Commands
Here is a list of the commands from Alfred itself and from my installed workflows.  
Pass in your stuff everywhere I use `<query>`.

## Alfred
### File Search
| Function                         | Command         |
|:---------------------------------|:---------------:|
| Start Quick File Search mode:    | `space <query>` |
| Show file/directory in Finder:   | `find <query>`  |
| Open a file:                     | `open <query>`  |
| Search for content in files:     | `in <query>`    |
| Search for macOS tags:           | `tags <query>`  |
| Show the previous searched path: | `previous`      |

### Clipboard History
I've changed `clipboard` to `clip` in Alfred's clipboard history settings.
| Function                 | Command |
|:-------------------------|:-------:|
| View clipboard content:  | `clip`  |
| Clear clipboard history: | `clear` |

### Dictionary
| Function       | Command          |
|:---------------|:----------------:|
| Define a word: | `define <query>` |
| Spell a word:  | `spell <query>`  |

### Contacts
| Function                       | Command                      |
|:-------------------------------|:----------------------------:|
| Email a contact:               | `email <query>`              |
| Attach file to mail:           | `File Attached: <file-name>` |
| Attach multiple files to mail: | `<number> Files Attached`    |

### Music
| Function                         | Command    |
|:---------------------------------|:----------:|
| Open Apple Music app/miniplayer: | `music`    |
| Play:                            | `play`     |
| Pause:                           | `pause`    |
| Next track:                      | `next`     |
| Back track:                      | `back`     |
| Previous track:                  | `previous` |
| Random album:                    | `random`   |
| Maximize volume:                 | `volmax`   |
| Half volume:                     | `volmid`   |
| Mute music:                      | `mute`     |

### System
| Function                         | Command           |
|:---------------------------------|:-----------------:|
| Start screen saver:              | `screensaver`     |
| Show trash:                      | `trash`           |
| Empty trash:                     | `emptytrash`      |
| Log out:                         | `logout`          |
| Sleep:                           | `sleep`           |
| Sleep displays:                  | `sleepdisplays`   |
| Lock:                            | `lock`            |
| Restart:                         | `restart`         |
| Shut down:                       | `shutdown`        |
| Hide app:                        | `hide <app>`      |
| Quit app:                        | `quit <app>`      |
| Force quit:                      | `forcequit <app>` |
| Quit all apps:                   | `quitall`         |
| Volume up:                       | `volup`           |
| Volume down:                     | `voldown`         |
| Toggle mute:                     | `mute`            |
| Eject local mounted volume:      | `eject`           |
| Eject all local mounted volumes: | `ejectall`        |

### Terminal
| Function               | Command       |
|:-----------------------|:-------------:|
| Run command in iTerm2: | `> <command>` |

### Previews
| Function                  | Command |
|:--------------------------|:-------:|
| Quick look selected item: | `shift` |

<br>

## [Emoji Search](https://github.com/jsumners/alfred-emoji)
| Function                                                | Command         |
|:--------------------------------------------------------|:---------------:|
| Search for emoji:                                       | `emoji <query>` |
| Copy selected emoji to the clipboard:                   | `enter`         |
| Copy the emoji code to the clipboard:                   | `alt`+`enter`   |
| Copy the UTF8 code to the clipboard:                    | `ctrl`+`enter`  |
| Copy emoji without skin tone modifier to the clipboard: | `shift`+`enter` |
| Paste emoji into the active application:                | `cmd`+`return`  |

<br>

## [GitHub Repos](https://github.com/edgarjs/alfred-github-repos)
Create a personal access token on GitHub.  
GitHub.com > top right profile picture > Settings > Developer Settings > Personal access tokens  
Every command works on and is for GitHub.

| Function                                      | Command                                  | Example                    |
|:----------------------------------------------|:----------------------------------------:|:---------------------------|
| Authenticate your user:                       | `gh-login <paste-your-token>`            |                            |
| Search globally:                              | `gh <query>`                             | gh hello-world             |
| Search globally with specific parameters:     | `gh <query> <paramenter`                 | gh hello-world stars:>1000 |
| Search your own remote repositories:          | `repo <query>`                           |                            |
| Search pull requests that you're involved in: | `pr <query>`                             |                            |
| Open your GitHub notification page:           | `gh-notifications`                       |                            |
| Customize organisation caches:                | `> CACHE_TTL_SEC_ORG  default: <number>` |                            |
| Customize pull request caches:                | `> CACHE_TTL_SEC_PR  default: <number>`  |                            |
| Customize repository caches:                  | `> CACHE_TTL_SEC_REPO default: 86400`    |                            |
| Login to enterprise account:                  | `gh-host <host>`                         |                            |

<br>

## [Network](https://github.com/mrodalgaard/alfred-network-workflow)
| Function                               | Command    |
|:---------------------------------------|:----------:|
| Show Wi-Fi info and enable/disable it: | `wifi`     |
| Show ethernet info:                    | `eth`      |
| Scan for Wi-Fi hotspots:               | `wifilist` |
| List configured VPN and connect:       | `vpn`      |
| List and change DNS settings:          | `dns`      |

<br>

## [Show Network Info](https://github.com/jeppestaerk/alfred-show-network-info)
| Function                       | Command          |
|:-------------------------------|:----------------:|
| Start workflow:                | `ip4`            |
| Copy value to clipboard:       | `enter`          |
| Open IP address in browser:    | `cmd`+`enter`    |
| Connect to IP address via SSH: | `option`+`enter` |








||||
