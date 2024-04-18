# This file has to be sourced in .zsh_aliases file:
# source ~/dotfiles/laravel/laravel_aliases.zsh           # Laravel


#------------------------------------------------------------------------------
#----- Laravel ZSH Aliases
#------------------------------------------------------------------------------


#------------------------------------------------------------------------------
#----- Sail

alias sail='./vendor/bin/sail'       # Use 'sail' instead of './vendor/bin/sail'.
alias sud='./vendor/bin/sail up -d'  # Start Sail in detached mode.
alias su='./vendor/bin/sail up'      # Start Sail.
alias sd='./vendor/bin/sail down'    # Stop Sail.
alias st="./vendor/bin/sail test"    # Run tests.



#------------------------------------------------------------------------------
#----- Sail Composer

# Start Composer update:
alias scu='./vendor/bin/sail composer update'

# Publish vendor directory:
alias svp='./vendor/bin/sail vendor:publish --force'


alias smfs='sail migrate:fresh --seed'
# Refresh database with project seeders.

alias scda='sail composer dump-autoload'

alias scu='sail composer update'


#------------------------------------------------------------------------------
#----- Sail Artisan

alias salc='./vendor/bin/sail artisan'  # Show artisan commands.
alias samctrl='sail artisan make:controller'
alias samview='sail artisan make:view'
alias sammigration='.vendor/bin/sail artisan make:migration'
alias samfseed='./vendor/bin/sail artisan migrate:fresh --seed'



# alias l,lc='php artisan'
# List commands.


# alias l,seeddb='php artisan db:seed'
# Seed database with records.


# alias l,st='php artisan tinker'
# Start Tinker CLI.


# laravel clockwork browser plugin anschauen!
# table plus sql oberfläche!
