RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' 

echo -e "${RED} ${NC}user@hostname      |     $(whoami)@$(hostname)"
echo -e "${GREEN} ${NC}Distro             |     $(lsb_release -s -i)"
echo -e "${YELLOW} ${NC}Kernel             |     $(uname -r)"
echo -e "${BLUE}⏻ ${NC}Uptime             |     $(uptime -p | sed "s/up //")"
echo -e "${PURPLE} ${NC}DE/WM              |     $XDG_CURRENT_DESKTOP"
echo -e "${CYAN} ${NC}Terminal           |     $(ps -o comm= -p "$(($(ps -o ppid= -p "$(($(ps -o sid= -p "$$")))")))")"
