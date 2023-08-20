# ~/.config/dotfiles/docker/docker_aliases.zsh


#-----------------------------------------------------------------------------
#  Docker ZSH Aliases
#-----------------------------------------------------------------------------

# List Docker commands:
alias dlc='docker'



#-----------------------------------------------------------
#- Container

# List all containers (running and stopped):
alias dcla='docker container ps -a -s'

# Create new container (add your options):
alias dcc='docker container run'

# Inspect container settings in JSON format (add name/id):
alias dci='docker inspect'

# Show log file of container (add name/id):
alias dcl='docker logs -f'



#-----------------------------------------------------------
#- Images

# List all images on disk
alias dil='docker images'



#-----------------------------------------------------------
#- Networks

# List all networks:
alias dnla='docker network ls'

# Remove a network (add id or name):
alias dnrm='docker network rm'












#-------------------------------------#
#          Docker -> Compose          #
#-------------------------------------#

# alias dcu='docker-compose up -d'
# Compose up.



#-------------------------------------#
#         Docker -> Containers        #
#-------------------------------------#

# alias dcg='docker container start'
# Start container (go).


# alias dcs='docker container stop'
# Stop container.


# alias dcsa='docker container stop $(docker ps -a -q)'
# Stop all containers.


# alias dcd='docker container rm -f'
# Delete container.


# alias dcda='docker rm -f $(docker ps -a -q)'
# Delete all containers.


# alias dcrl='docker exec -i -t'
# Root login container.


#-------------------------------------#
#           Docker -> Images          #
#-------------------------------------#

# alias dila='docker images -a --format'
# List all images.


# alias did='docker rmi -f'
# Delete an image.


# alias dida='docker rmi -f $(docker images -a -q)'
# Delete all images.

#------------------------------------------------------------INSPECT

#-------------------------------------#
#          Docker -> Networks         #
#-------------------------------------#

# alias dnlc='docker network'
# List network commands.


# alias dnla='docker network ls'
# List all networks.


# alias dni='docker network inspect'
# Inspect a network.


# alias dnd='docker network rm -f'
# Delete a network.


# alias d,dan='docker network prune'
# Delete all networks.



#-------------------------------------#
#           Docker -> Volumes         #
#-------------------------------------#

# alias d,sdv='docker volume ls -q -f dangling=true'
# Show dangling volumes (volumes without containers).


# alias d,ssofdv='du -h --max O admin:///var/lib/docker/volumes/$(docker volume ls -q -f dangling=true'
# Show size of dangling volumes.



# docker system prune -a
# Delete all stopped.

