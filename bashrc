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
alias please='sudo'
alias swag='neofetch'
alias hack='hollywood'
alias hello='scrot && gimp'
alias clock='sudo ntpd -q -g'
alias feh="feh -F"
alias small='zip -r'
alias unsmall='unzip'
alias close='tar -czvf'
alias unclose='tar -xzvf'
alias connect-herrenberg='sudo nmcli device wifi connect UPC1361924 password af6hhfj3mdsW'
alias connect-hotspot='sudo nmcli device wifi connect ZentrumDerMacht password ichbindoof'
alias connect-reha='sudo nmcli device wifi connect MeinHotspot password 2WAtxGE9'
alias connect-repeater='sudo nmcli device wifi connect Repeater password 47255439844219085610'
alias sound='alsamixer -V all -g -c 1'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias get='sudo emerge'
alias unget='sudo emerge --ask --unmerge'
alias get-update='sudo ntpd -q -g && sudo emerge-webrsync && sudo emerge --update --deep --newuse --ask @world'
alias get-edit='sudo leafpad /etc/portage/make.conf'
alias get-use-edit='sudo leafpad /etc/portage/package.use'
alias get-clean='sudo emerge --depclean -a'
alias get-kernel='sudo genkernel --luks --lvm --no-zfs --menuconfig all && sudo grub-mkconfig -o /boot/grub/grub.cfg'
