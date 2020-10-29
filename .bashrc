# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
#PS1='\A | \[\e[31m\]\u\[\e[m\]@\h: [\[\e[31m\]\w\[\e[m\]] '
PS1='\[\e[m\]╭─\[ \A | \[\e[31m\]\u\[\e[m\]@\h: [\[\e[31m\]\w\[\e[m\]]\[\e[m\]\n╰──\[\e[31m\]❱ \[\e[m\]'

export VISUAL=vim;
export EDITOR=vim;

alias data='doas ranger'
alias nf='neofetch'
alias feh="feh -F"
alias brightness='doas leafpad /sys/class/backlight/intel_backlight/brightness'
alias close='tar -czvf'
alias unclose='tar -xzvf'
alias wifi='doas wpa_cli'
alias fm='ranger'
alias hello='sh /home/maxi/.local/share/bin/newscrot'
alias sound='alsamixer -V all -g -c 0'
alias update-grub='doas grub-mkconfig -o /boot/grub/grub.cfg'
alias get='doas emerge'
alias unget='doas emerge --ask --unmerge'
alias get-update='doas ntpd -q -g && doas emerge-webrsync && doas emerge --update --deep --newuse --ask @world'
alias get-clean='doas emerge --depclean -a'
