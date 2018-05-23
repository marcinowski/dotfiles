Testing out the submodules approach for vim packages
as in the https://marcin.com/vim-packages/ article.

TL;DR:
1. to add a package:

	cd ~/dotfiles
	git submodule init
	git submodule add https://github.com/<package-name>/<package-name>.git vim/pack/shapeshed/start/<package-name>
	git add .gitmodules vim/pack/marcin/start/<package-name>
	git commit

2. to update packages:

	git submodule update --remote --merge
	git commit

3. to remove a package:

	git submodule deinit vim/pack/shapeshed/start/<package-name>
	git rm vim/pack/shapeshed/start/<package-name>
	rm -Rf .git/modules/vim/pack/shapeshed/start/<package-name>
	git commit

4. to "install" this repo for vim:
 - run `git submodule update --remote --merge`
 - copy .vimrc and vim to ~
