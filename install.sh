RED='\033[0;31m'

# Function to check if a command is available
check_command() {
  command -v $1 > /dev/null 2>&1
}

# Check if wget, perl, and git are installed
if ! check_command wget; then
  echo -e "${RED}Installing wget..."
  pkg install wget
fi

if ! check_command perl; then
  echo -e "${RED}Installing perl..."
  pkg install perl
fi

if ! check_command git; then
  echo -e "${RED}Installing git..."
  pkg install git
fi

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

  # Copy nikto.conf to the user's home directory
  cp nikto.conf $HOME
fi

printf "${RED}*********Installed with no error*********"
