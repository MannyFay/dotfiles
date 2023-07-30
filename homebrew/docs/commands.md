# Homebrew Commands
If you see something like `<some-text>` that means, you have to delete this 
phrase and put in your own text.  
`brew <some-text>` -> `brew help`.

<br>

## Formulas
| Function                                       | Command                                    |
|:-----------------------------------------------|:-------------------------------------------|
| Check version of Homebrew:                     | `brew -v`                                  |
| Show help documentation:                       | `brew help`                                |
| List all packages that can be installed:       | `brew search`                              |
| Show number of packages that can be installed: | `brew search \| wc -l`                     |
| Search if a specific package is available:     | `brew search <package-your-searching-for>` |
| Install a formulae:                            | `brew install <name-of-the-formulae>`      |
| Show information of a specific formulae:       | `brew info <name-of-the-formulae>`         |
| Uninstall a specific formulae:                 | `brew uninstall <name-of-the-formulae>`    |
| List installed formulaes:                      | `brew list`                                |
| Update (fetch new) formulaes:                  | `brew update`                              |
| Show outdated formulaes on machine:            | `brew outdated`                            |
| Upgrade formulaes:                             | `brew upgrade`                             |
| Uninstall old formulaes:                       | `brew cleanup`                             |
| Run Homebrew diagnostic:                       | `brew doctor`                              |

<br>

## Casks
| Function                          | Command                               |
|:----------------------------------|:--------------------------------------|
| Show homepage of a specific cask: | `brew home --cask <name-of-the-cask>` |
| Install a cask:                   | `brew install --cask <cask-name>`     |
| Uninstall a cask:                 | `brew uninstall --cask <cask-name>`   |

<br>

## Taps
| Function                                     | Command                             |
|:---------------------------------------------|:------------------------------------|
| Tap a repository (install it after tapping): | `brew tap <name-of-the-repository>` |

<br>

## MAS
To install apps directly from the Apple App Store you have to install MAS first:
```shell
brew install mas
```
| Function                             | Command                 |
|:-------------------------------------|:------------------------|
| Search for an App Store application: | `mas search <app-name>` |



