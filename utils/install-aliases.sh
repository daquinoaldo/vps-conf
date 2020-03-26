#!/bin/bash

# add .bash_alises in .bashrc if not present
grep -q '.bash_aliases' ~/.bashrc || echo '. ~/.bash_aliases' >> ~/.bashrc



# install aliases
cat <<EOT >> ~/.bash_aliases
# Docker shortcuts
alias down="docker-compose down"
alias up="docker-compose up -d"
alias run="docker run -dit --restart=always"
alias stop="docker rm -f"
alias logs="docker logs"
EOT

# activate alias
. ~/.bashrc