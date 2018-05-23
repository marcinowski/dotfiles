Testing out the submodules approach for vim packages
as in the https://shapeshed.com/vim-packages/ article.

TL;DR:
1. to add a package:

	cd ~/dotfiles
	git submodule init
	git submodule add https://github.com/vim-airline/vim-airline.git vim/pack/shapeshed/start/vim-airline
	git add .gitmodules vim/pack/shapeshed/start/vim-airline
	git commit

2. to update packages:

	git submodule update --remote --merge
	git commit

3. to remove a package:

	git submodule deinit vim/pack/shapeshed/start/vim-airline
	git rm vim/pack/shapeshed/start/vim-airline
	rm -Rf .git/modules/vim/pack/shapeshed/start/vim-airline
	git commit

4. to "install" this repo for vim:
 - run `git submodule update --remote --merge`
 - copy .vimrc and vim to ~
