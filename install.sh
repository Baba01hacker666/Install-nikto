RED='\033[0;31m'

# Check if the 'tools' directory exists and create it if not
if ! test -d $HOME/tools; then
  mkdir $HOME/tools
fi

# Change to the 'tools' directory
cd $HOME/tools

# Check if Nikto is already installed, and if not, install it
if ! test -d $HOME/tools/nikto; then
  git clone https://github.com/sullo/nikto.git
  cd nikto/program
  cp nikto.pl nikto
  mv nikto $PREFIX/bin
  cd $PREFIX/bin
  wget https://raw.githubusercontent.com/Baba01hacker666/Install-nikto/main/nikto.conf
fi

printf "${RED}*********Installed with no error*********"
