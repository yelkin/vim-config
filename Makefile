BACKUP_ARCHIVE=vim-config_$(shell date +%d-%m-%y_%H-%M-%S).tar.gz
BACKUP_FILE_LIST=.vimrc .vim

all: backup install

install:
	cp -r .vimrc .vim $(HOME)
	vim +BundleInstall
	@echo "New vim config installed successfully"
backup:
	tar -ca -C $(HOME) -f $(HOME)/$(BACKUP_ARCHIVE) $(BACKUP_FILE_LIST)
	@echo "Your current vim config was saved to $(BACKUP_ARCHIVE) in your home directory."
