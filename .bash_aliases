alias mathematica='sh /usr/local/Wolfram/Mathematica/11.0/Executables/mathematica'
alias matlab='bash /usr/local/MATLAB/R2017b/bin/matlab'
alias ud_vpn='sudo openconnect vpn-chp.nss.udel.edu'
alias ram='watch -n 5 free -m'
alias clc='clear'

MOUSE_ID=`xinput --list | grep -Po -m1 'Mouse.*id=[0-9]*'| grep -Po '[0-9]*'`
if [[ $MOUSE_ID ]]; then
	alias fix_mouse='xinput --set-prop $MOUSE_ID "Device Accel Constant Deceleration" 2 && xinput --set-prop $MOUSE_ID "Device Accel Velocity Scaling" 2'
fi

alias edit_connections='gksudo nm-connection-editor'


alias ssr='simplescreenrecorder'

alias eclipse='${HOME}/eclipse/java-oxygen/eclipse/eclipse'

alias num-files='find .//. ! -name . -print | grep -c //'

alias enhance='sudo function ne() { docker run --rm -v "$(pwd)/`dirname ${@:$#}`":/ne/input -it alexjc/neural-enhance ${@:1:$#-1} "input/`basename ${@:$#}`"; }; ne'

alias violet='java -jar /usr/share/java/violetumleditor-2.1.0.jar'

alias suspend='systemctl suspend'

alias ud2fa='oathtool --totp -b e52kmcqri6fuglqbj24npf3s2ef2k4lv | xsel -ib'

alias ssh372='ssh nmerrill@cisc372.cis.udel.edu'

alias hoek='ssh nmerrill@hoek.eecis.udel.edu'

alias sshrpng='ssh -X rpng@192.168.1.24'
alias sshLrpng_eduroam='ssh -L 26006:127.0.0.1:6006 -X rpng@128.175.195.20'
alias sshrpng_eduroam='ssh -X rpng@128.175.195.20'
alias sshLxsede='ssh -L 16006:127.0.0.1:6006 -X nmerrill@login.xsede.org'
alias sshxsede='ssh -X nmerrill@login.xsede.org'
alias sshyian='ssh nmerrill@yian.chem.udel.edu'
alias sshLyian='ssh -L 16006:127.0.0.1:6006 nmerrill@yian.chem.udel.edu'

alias clip='xclip -selection clipboard'

alias tex='pdflatex --halt-on-errorpdflatex --halt-on-error'

alias cudnn5='export CUDNN_PATH=/usr/local/cudnn-5/lib64/libcudnn.so.5'

alias sshLbridges='ssh -p 2222 -L 16006:127.0.0.1:6006 nmerrill@bridges.psc.edu'
alias sshbridges='ssh -p 2222 nmerrill@bridges.psc.edu'

alias androidstudio='cd /usr/local/android-studio/bin && sudo ./studio.sh'
