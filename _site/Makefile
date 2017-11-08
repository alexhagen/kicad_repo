all: build

build:
	cd ~/pages/kidb; \
	git rm -r *; \
	cd ~/code/kidb; \
	cat index_yaml.md > index.md; \
	cat README.md >> index.md; \
	bundler exec jekyll build --destination=~/pages/kidb; \
	cd ~/pages/kidb; \
	git add *; \
	git commit -am "$(shell git log -1 --pretty=%B | tr -d '\n')"; \
	git push origin gh-pages; \
	cd ~/code/kidb
