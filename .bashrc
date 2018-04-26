# .bashrc

# User specific aliases and functions
#alias passwd='yppasswd'
alias ll='ls -al'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\][\u\[\033[01;35m\]@\[\033[01;36m\]\h\[\033[01;33m\]:\[\033[01;34m\]\w\[\033[01;32m\]]\[\033[01;39m\]$?\n\[\033[01;34m\]\t  \[\033[01;31m\]\$\[\033[01;00m\]'
export PATH=$PATH:~/.bin
#export PATH=$PATH:~/shome/.bin
#module load anaconda/2.1.0
#module load cuda/6.5
#module load git/2.2.1
#module load gromacs-5.1.4
#module load namd-2.12
#module load R/3.2.3
#module load gnuplot/4.6.7
#module load Amber14
