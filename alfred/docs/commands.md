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

## [Alfred Chrome](https://github.com/ShogunPanda/alfred-chrome)
| Function                | Command |
|:------------------------|:-------:|
| Trigger workflow:       | `cr`    |
| Open in incognito mode: | `alt`   |

<br>

## [Alpine.js Docs](https://github.com/Fadarrizz/alfred-alpinejs-docs)
| Function                | Command       |
|:------------------------|:-------------:|
| Search in docs:         | `alp <query>` |
| Quick look on result:   | `cmd`+`y`     |
| Open result in browser: | `enter`       |

<br>

## [Call or Message Contact](https://github.com/c-stephens/Call-or-Message-Contact)
| Function                  | Command                 |
|:--------------------------|:-----------------------:|
| Start Facetime call:      | `face <name-or-number>` |
| Start phone call:         | `call <name-or-number>` |
| Answer a call:            | `answer`                |
| End a call:               | `end`                   |
| Mute/unmute current call: | `mute`                  |
| Open messages to send:    | `im <name-or-number>`   |
| Write message:            | `msg <name-or-number>`  |

<br>

## [Cheat](https://github.com/wayneyaoo/alfred-cheat)
Create a directory to store your cheat sheets.  
Mine you can see [here](alfred/workflows/cheat/).
I've used something `# Git Branches: ...` for example. That's because I have
tweaked the workflow with [this](https://github.com/wayneyaoo/alfred-cheat/issues/22)
and I search by default with `--search`, so `-s` in my case.
| Function                          | Command               |
|:----------------------------------|:---------------------:|
| Add cheats directory to workflow: | `cf <directory>`      |
| Search for cheats:                | `cs <query>`          |
| Search for keywords:              | `cs --search <query>` |
| Copy command to the clipboard:    | `cmd`+`c`             |
| Past command to active app:       | `enter`               |

<br>

## [Color Converter](https://github.com/toFrankie/alfred-color-converter)
| Function                | Command                 |
|:------------------------|:-----------------------:|
| Convert hex color:      | `cc #<color-code>`      |
| Convert rgb color:      | `cc rgb(<color-code>)`  |
| Convert rgba color:     | `cc rgba(<color-code>)` |
| Convert color:          | `cc <color>`            |
| Save code to clipboard: | `enter`                 |

<br>

## [Deep Contacts Search](https://alfred.app/workflows/alfredapp/deep-contacts-search/)
| Function             | Command       |
|:---------------------|:-------------:|
| Search in contacts:  | `dc <query>`  |
| Use wildcard search: | `dc *<query>` |

<br>

## [DeepL-Translate](https://github.com/m9dfukc/deepl-alfred-workflow/tree/master)
| Function                             | Command                       |
|:-------------------------------------|:-----------------------------:|
| Translate to configured language(s): | `dl <text>`                   |
| Translate to specific language(s):   | `dl <text> > <lang1> <lang2>` |
| Copy result:                         | `enter`                       |
| Show result as big screen overlay:   | `cmd`+`enter`|



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

## [Homebrew Controller](https://www.packal.org/workflow/homebrew-controller)
| Function                               | Command    |
|:---------------------------------------|:----------:|


<br>

## [Kill Process](https://www.packal.org/workflow/kill-process)
| Function                                           | Command                     |
|:---------------------------------------------------|:---------------------------:|
| Kill a process:                                    | `kill <process>`            |
| Kill all processes with the same name as selected: | `cmd`+`enter`               |
| Filter by arguments of processes:                  | `kill <process>:<argument>` |

<br>

## [Laravel Docs](https://github.com/tillkruss/alfred-laravel-docs)
| Function                         | Command      |
|:---------------------------------|:------------:|
| Search in Laravel documentation: | `ld <query>` |
| Open quick preview:              | `cmd`+`y`    |
| Open result in browser:          | `enter`      |

<br>

## [Lorem Ipsum](https://github.com/tillkruss/alfred-lorem-ipsum)
| Function                              | Command                     |
|:--------------------------------------|:---------------------------:|
| Generate seven words:                 | `lorem words`               |
| Generate custom number of words:      | `lorem words <number>`      |
| Generate three sentences:             | `lorem sentences`           |
| Generate custom number of sentences:  | `lorem sentences <number>`  |
| Generate three paragraphs:            | `lorem paragraphs`          |
| Generate custom number of paragraphs: | `lorem paragraphs <number>` |


<br>

## [MDN Search](https://github.com/gilbarbara/alfred-workflows/tree/main/mdn-search)
| Function                         | Command       |
|:---------------------------------|:-------------:|
| Search in Mozilla documentation: | `mdn <query>` |

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

## [PHP Doc Search](https://www.packal.org/workflow/php-doc-search)
| Function                                      | Command          |
|:----------------------------------------------|:----------------:|
| Search PHP documentation: | `php <query>` |
| Open result in browser: | `enter` |

<br>

## [Search Notes](https://github.com/sballin/alfred-search-notes-app)
| Function                                      | Command          |
|:----------------------------------------------|:----------------:|
| Search titles or create new if none is found: | `n <query>`      |
| Search titles and bodies:                     | `nb <query>`     |
| Search folder names:                          | `nf <query>`     |
| Open note/folder or create new:               | `enter`          |
| Search for query in Notes in-app search:      | `shift`+`enter`  |
| Copy body of note to the clipboard:           | `cmd`+`enter`    |
| Copy link to the note to the clipboard:       | `alt`+`enter`    |

<br>

## [Show Network Info](https://github.com/jeppestaerk/alfred-show-network-info)
| Function                       | Command          |
|:-------------------------------|:----------------:|
| Start workflow:                | `ip4`            |
| Copy value to clipboard:       | `enter`          |
| Open IP address in browser:    | `cmd`+`enter`    |
| Connect to IP address via SSH: | `option`+`enter` |

<br>

## [Sidecar Connect](https://github.com/kovstas/alfred-sidecar)
| Function                 | Command |
|:-------------------------|:-------:|
| Connect/disconnect iPad: | `sc`    |

<br>

## [TailwindCSSDocs](https://github.com/clnt/alfred-tailwindcss-docs/tree/master)
| Function                                | Command       |
|:----------------------------------------|:-------------:|
| Search in TailwindCSS v3 documentation: | `tw <query>`  |
| Search in TailwindCSS v2 documentation: | `tw2 <query>` |
| Search in TailwindCSS v1 documentation: | `tw1 <query>` |
| Search in TailwindCSS v0 documentation: | `tw0 <query>` |

<br>

## [True Tone Toggle](https://github.com/B3nnyL/alfred-true-tone-toggle)
| Function                       | Command |
|:-------------------------------|:-------:|
| Toggle macOS true tone on/off: | `tt`    |

<br>

## [Urban Dictionary](https://github.com/xilopaint/alfred-urban-dictionary/releases/tag/v2.7.0)
| Function                            | Command       |
|:------------------------------------|:-------------:|
| Search in dictionary:               | `ud <query>`  |
| Show result on urbandictionary.com: | `enter`       |
| Show selected definition on screen: | `cmd`+`enter` |

<br>

## [Word Search](https://github.com/jun6lee/Alfred-WordSearch)
| Function                            | Command       |
|:------------------------------------|:-------------:|
| Search for synonyms: | `syn <query>` |
| Search for exact synonyms: | `dsyn <query>` |
| Search for antonyms: | `ant <query>` |
| Search for rhymes: | `rhyme <query>` |
| Search for words that describe the \<query> | `describing <query>` |










