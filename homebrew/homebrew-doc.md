# Homebrew Documentation
https://brew.sh/  
The macOS [package manager](https://en.wikipedia.org/wiki/Package_manager)  
Installing Homebrew is one of the very first things you should do if you unbox
your Mac.

## Installing Homebrew
Open Terminal and run:
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Keep an eye of last lines of the output from the installation script.  

## Location on Disk
Homebrew is located on your Mac in:
```shell
cd /opt/homebrew/
```

## Wording
|Word|Description|
|:---|:----------|
|Formulae|All about command line software|
|Cask|Extension to install native macOS applications|
|Tap|Repository that is not registered in Homebrews core library|


## Commands
If you see something like `<some-text>` that means, you have to delete this 
phrase and put in your own text. `brew <some-text>` -> `brew help`.

## macOS vs. Linux
By default you have already installed applications like Git, Grep or Curl.  
The point is, that are the 'Apple'-Versions of this tools.  
For development, the GNU versions that Linux uses are more common.  
Add this to your `.zshrc` file to use the GNU-Version of the application 
without a prefix:
```shell
PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
```

|Function|Command|
|:-------|:------|
|Check version of Homebrew:|`brew -v`|
|Show help documentation:|`brew help`|
|List all packages that can be installed:|`brew search`|
|Show number of packages that can be installed:|`brew search | wc -l`|
|Search if a specific package is available:|`brew search <package-your-searching-for>`|
|Install a formulae:|`brew install <name-of-the-formulae>`|
|Show information of a specific formulae:|`brew info <name-of-the-formulae>`|
|Uninstall a specific formulae:|`brew uninstall <name-of-the-formulae>`|
|List installed formulaes:|`brew list`|
|Update (fetch new) formulaes:|`brew update`|
|Show outdated formulaes on machine:|`brew outdated`|
|Upgrade formulaes:|`brew upgrade`|
|Uninstall old formulaes:|`brew cleanup`|
|Run Homebrew diagnostic:|`brew doctor`|
|Show homepage of a specific cask:|`brew home --cask <name-of-the-cask>`|
|Tap a repository (install it after tapping):|`brew tap <name-of-the-repository>`|






