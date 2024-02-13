# ----- Install script for Novrion's Arch Linux -----

# TODO Fix arguments
res="resources"

# Flags
whlie getopts "m" flag; do
	case $flag in 
		m ) # minimal install
			file="$res/packages-minmal"
			;;
		h ) # display help message
			echo " -m [minimal install]"
			exit
			;;
		\?) echo "invalid argu"... ?????????
		
		esac
done

# Install packages
if [ "$1" == "--minimal" ]; then
	file="resources/packages-minimal"
else
	file="resources/packages"
fi

raw=$(cat $file)
packages="${raw//$'\n'/ }"
sudo pacman -S $packages

# Copy .config
cp -r .config/ $XDG_CONFIG_HOME/.config/

# Copy .xinitrc
cp .xinitrc $XDG_CONFIG_HOME/.xinitrc

# VIM
cp .vimrc $XDG_CONFIG_HOME/.vimrc
#sudo cp .vimrc /usr/share/vim/vim91/.vimrc
# make symbolic link between sudo file and user file ? Unsecure
# or just use system wide file ? Bad practice if multiple users
# Or maybe just use different files for root and user. Might be useful.