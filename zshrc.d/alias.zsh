# Daves aliases


#######
# exa
alias lsa="exa --long --header"
alias ll="exa --long --header"
alias lla="exa --long --grid --all"
alias ls="exa"
alias tree="exa --tree --level=2 --long"

#######
# batcat
alias catb="bat"
alias catl="bat --paging=never"

#######
# movement
alias cl="clear"
alias -- -="cd -"
alias ..="cd .."
alias vim=nvim

alias traj="cd ~/repos/tt_robot/tt_mk1_sw/src/tt_mk1_trajectory_controller/"
alias common="cd ~/repos/tt_robot/common/src/"
alias luamake=/luamake

alias tt_sim="cd ~/repos/tt_robot_simulation"
alias simvim='${EDITOR:-nvim} "${ZDOTDIR:-$HOME}"/repos/tt_robot_simulation/'
alias plotj="ros2 run plotjuggler plotjuggler"

#######
# mk2

alias tt="cd ~/repos/tt_robot/"
# alias ttvim='${EDITOR:-nvim} "${ZDOTDIR:-$HOME}"/repos/tt_robot/'
# alias mk1="cd ~/repos/tt_robot/tt_mk1_sw/"
# alias mk2="cd ~/repos/tt_robot/tt_mk2_sw/"
# alias traj2="cd ~/repos/tt_robot/tt_mk2_sw/src/tt_mk2_trajectory_controller/"
# alias common="cd ~/repos/tt_robot/common/src/"
# alias traj2vim='${EDITOR:-nvim} "${ZDOTDIR:-$HOME}"/repos/tt_robot/tt_mk2_sw/src/tt_mk2l_trajectory_controller/'
# alias mpc="cd ~/repos/tt_robot/tt_mk2_sw/src/tt_mk2_trajectory_controller/lib/acado"
# alias trajtools="cd ~/repos/tt_robot/common/src/tt_trajectory_controller_tools"
#
# alias 8="trajtools && cd scripts/ && ./trajectory_ui.py"
# alias generator="ros2 run tt_trajectory_controller_csv_tools tt_trajectory_generator"
# alias generator2="ros2 run tt_trajectory_controller_tools tt_trajectory_generator"

alias acado_src="source ~/repos/ACADOtoolkit/build/acado_env.sh"
alias source_acado="source ~/repos/ACADOtoolkit/build/acado_env.sh"

# alias build_acado="mpc && acado_src && ./build_acado.sh"
# alias build_traj="mk2 && ./build_colcon.sh mk2m release --packages-select tt_mk2_trajectory_controller"

#######
# git
alias gd="git diff"
alias gl="git log --oneline --decorate --graph"
alias gas="git add . && git status"
alias do_daily="cd ~/repos/Turf\ Tank/ && gas && git commit -m 'files' && cd"

#######
# misc
alias naut="nautilus --no-desktop"

#######
# alias to dump aliases
alias aliasd="bat ~/zshrc.d/alias.zsh"

#######
# sourcing the shell
alias src="source ~/.zshrc"
alias ns="src"

#######
# tmux
alias tls="tmux ls"
alias ta="tmux a"
alias tka="tmux kill-server"

alias tros="tmuxinator start ros_build"

#######
# sourcing ROS workspaces
alias source_tt_robot="source ~/repos/tt_robot/install/setup.zsh"
alias source_tt_test="source ~/repos/tt_test_sw/tt_robot/install/setup.zsh"

#######
# aliases made with the scripts/create_alias.sh
alias create_alias="~/scripts/create_alias.sh"
alias ca="create_alias"
alias prodt="cd repos/tt_robot/common/src/tt_prod_test_server" 
alias ttest="cd repos/tt_test_sw/" 
alias clear_proton="sudo nmcli connection delete pvpn-ipv6leak-protection" 
alias pt="cd repos/pt/tt_pt_sw" 

#######
# autojump
alias stats="autojump -s"

#######
# conf inside .dotfiles repo
DOTFILES="~/.dotfiles"

# open .zshrc with neovim
alias zconf="vim $DOTFILES/zshrc"
alias aliasconf='${EDITOR:-nvim} "${ZDOTDIR:-$HOME}"/zshrc.d/alias.zsh'

# open i3 configs with i3
alias i3conf="${EDITOR:-nvim} $DOTFILES/i3/config"
alias i3bconf="${EDITOR:-nvim} $DOTFILES/i3blocks/config"

# neovim conf
alias vimconf='${EDITOR:-nvim} "${I3DIR:-$HOME}"/.config/nvim/init.lua'

# open tmux conf
alias tmuxconf="${EDITOR:-nvim} $DOTFILES/tmux.conf"

# list above confs
alias conf="alias | grep 'conf' | sed 's/alias //g' | bat -l bash"


