#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias vivadoide='unset LANG && unset QT_PLUGIN_PATH && source /opt/Xilinx/Vivado/2016.4/settings64.sh && vivado'
#alias vivadosdk='unset LANG && unset QT_PLUGIN_PATH && source /opt/Xilinx/SDK/2016.2/settings64.sh && xsdk'
alias pacman='sudo pacman --color always'
alias vi='vim'
alias v='nvim'
alias sv='sudo nvim'
alias rm='rm -i'
alias ls='ls -G'
alias la='ls -AF'
alias s="sudo"
PS1='[\u@\h \W]\$ '
#alias vivado='source /opt/Xilinx/Vivado/2016.4/settings64.sh'

export PATH=$PATH:/opt/riscv32i/bin
source /home/tyre/rfnoc/setup_env.sh
