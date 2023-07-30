# [Homebrew Documentation](https://brew.sh/)
The macOS [package manager](https://en.wikipedia.org/wiki/Package_manager)  
Installing Homebrew is one of the very first things you should do if you unbox
your new Mac or starting with a clean macOS installation.

Here is a bunch of [Homebrew commands](/homebrew/docs/commands.md).

<br>

## Installing Homebrew
Open Terminal and run:
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Keep an eye of last lines of the output from the installation script.  
Normally you have to do a few steps to get finished.

<br>

## Location on Disk
Homebrew is located on your Mac in:
```shell
cd /opt/homebrew/
```

<br>

## Wording
| Word     | Description                                                 |
|:---------|:------------------------------------------------------------|
| Formulae | All about command line software                             |
| Cask     | Extension to install native macOS applications              |
| Tap      | Repository that is not registered in Homebrews core library |

<br>

## macOS vs. Linux
By default you have already installed applications like Git, Grep or Curl on macOS.  
The point is, they are the 'Apple'-Versions of this tools.  

For development, the GNU versions that Linux uses are more common.  
Add this to your `.zshrc` file to use the GNU-Version of the application 
without writing a prefix if you start them in Terminal:
```shell
PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
```



