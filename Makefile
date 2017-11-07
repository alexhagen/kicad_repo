all: build

build:
	cd ~/pages/kidb; \
	git rm -r *; \
	cd ~/code/kidb; \
	jekyll build --destination=~/pages/kidb; \
	cd ~/pages/kidb; \
	cat index_yaml.md > index.md; \
	cat README.md >> index.md; \
	git add *; \
	git commit -am "$(shell git log -1 --pretty=%B | tr -d '\n')"; \
	git push origin master; \
	cd ~/code/kidb
