# .zshrc
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$PATH:/usr/local/texlive/2022/bin/x86_64-linux 
export PATH=$PATH:/home/dave/Downloads/lua-language-server/bin

# set history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt incappendhistory

# Setting ROS2 to LOCALHOST only, by default it finds and shares nodes on the local network.
export ROS_LOCALHOST_ONLY=1

#######
# Daves antidote settings 

# Load Antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh


antidote load

# Set your prompt
autoload -Uz promptinit && promptinit

#######
# sourcing config files from ~/zshrc.d (keep the order)
source ~/zshrc.d/vi_mode.zsh
source ~/zshrc.d/autosuggestions.zsh
source ~/zshrc.d/autosuggestions.zsh
source ~/zshrc.d/alias.zsh

######
# autojump (manually installed, see repos/autojump
[[ -s /home/dave/.autojump/etc/profile.d/autojump.sh ]] && source /home/dave/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

#######
# ROS2 sources
# these are first tested if they exists and then sourced only then

test -f /opt/ros/galactic/setup.zsh && source /opt/ros/galactic/setup.zsh
# test -f /home/dave/repos/tt_robot/common/install/setup.zsh && source /home/dave/repos/tt_robot/common/install/setup.zsh
# test -f /home/dave/repos/tt_robot/tt_mk1_sw/install/setup.zsh && source /home/dave/repos/tt_robot/tt_mk1_sw/install/setup.zsh
# test -f /home/dave/repos/tt_robot/tt_mk2l_sw/install/setup.zsh && source /home/dave/repos/tt_robot/tt_mk2l_sw/install/setup.zsh
# test -f /home/dave/repos/tt_robot_simulation/install/setup.zsh && source /home/dave/repos/tt_robot_simulation/install/setup.zsh

# ROS2 argcomplete w/ colcon
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh
source /usr/share/colcon_cd/function/colcon_cd.sh

# argcomplete for ros2 & colcon
eval "$(register-python-argcomplete3 ros2)"
eval "$(register-python-argcomplete3 colcon)"

# acados env variables
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"/home/dave/repos/acados/lib"
# export ACADOS_SOURCE_DIR="<acados_root>"
#export PATH=/home/dave/repos/tt_robot/tools/cm4_flasher/balena-cli:$PATH
#alias FLASH="sudo python3 /home/dave/repos/tt_robot/tools/cm4_flasher/tt_flasher/tt_flasher/flash.py"

export EDITOR=nvim
