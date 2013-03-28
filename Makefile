BACKUP_ARCHIVE=vim-config_$(shell date +%d-%m-%y_%H-%M-%S).tar.gz
BACKUP_FILE_LIST=.vimrc .vim

all: backup install

install:
	# Install Vundle
	#Don't delete user config
	#rm -rf $(HOME)/.vim
	[ -d ~/.vim/bundle/vundle ] || git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	# Install my vim config and my vundle config
	cp -r .vimrc $(HOME)
	# Install bundles
	vim +BundleInstall
	@echo "New vim config installed successfully"
backup:
	tar --ignore-failed-read -ca -C $(HOME) -f $(HOME)/$(BACKUP_ARCHIVE) $(BACKUP_FILE_LIST)
	@echo "Your current vim config was saved to $(BACKUP_ARCHIVE) in your home directory."
