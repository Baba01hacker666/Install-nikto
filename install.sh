RED='\033[0;31m'
printf "${RED}*********Installing Nikto**********\n"
if ! test -f //data/data/com.termux/files/home/tools; then
  mkdir  tools
fi
cd tools
if ! test -f /data/data/com.termux/files/home/tools/nikto/; then
  git clone  https://github.com/sullo/nikto
  cd nikto/program
  cp nikto.pl nikto
  mv nikto $PREFIX/bin
  cd $PREFIX/bin
  wget https://raw.githubusercontent.com/Baba01hacker666/Install-nikto/main/nikto.conf
fi
printf "${RED}*********Installed with no error*********"
