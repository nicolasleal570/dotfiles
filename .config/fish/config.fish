
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/nicolasleal570/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
