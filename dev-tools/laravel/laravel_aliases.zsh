#------------------------------------------------------------------------------
# Laravel ZSH Aliases
#------------------------------------------------------------------------------


#------------------------------------------------------------------------------
# Sail

alias sail='./vendor/bin/sail'       # Use 'sail' instead of './vendor/bin/sail'.
alias sud='./vendor/bin/sail up -d'  # Start Sail in detached mode.
alias su='./vendor/bin/sail up'      # Start Sail.
alias sd='./vendor/bin/sail down'    # Stop Sail.
alias st="./vendor/bin/sail test"    # Run tests.


#------------------------------------------------------------------------------
# Sail Composer

# Start Composer update:
alias scu='./vendor/bin/sail composer update'

# Publish vendor directory:
alias svp='./vendor/bin/sail vendor:publish --force'


# Run Composer dump-autoload:
alias scda='./vendor/bin/sail composer dump-autoload'


#------------------------------------------------------------------------------
# Sail Artisan

# List artisan commands:
alias salc='./vendor/bin/sail artisan'

# Refresh database with project seeders:
alias smfs='./vendor/bin/sail artisan migrate:fresh --seed'

# Create new controller:
alias samctrl='./vendor/bin/sail artisan make:controller'

# Create new model:
alias samview='./vendor/bin/sail artisan make:view'

# Create new migration:
alias sammigration='.vendor/bin/sail artisan make:migration'

# Create new seeder:
alias samseeder='./vendor/bin/sail artisan make:seeder'

