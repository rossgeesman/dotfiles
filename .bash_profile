alias code='open -a "Visual Studio Code"'
alias subl='open -a "Sublime Text"'
custom_include_file() {
     if [ -f "$1" ]; then
         source $1
     fi
}

BASH_INCLUDES_DIR="$HOME/.bash_includes"

if [ -d "$BASH_INCLUDES_DIR" ]; then
     for file in `ls $BASH_INCLUDES_DIR`; do
         custom_include_file $BASH_INCLUDES_DIR/$file
     done
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
