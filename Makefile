BUILD=staticjinja build --outpath=cubeworks-inc.github.io --static=static

all:	setup
	$(BUILD)

setup:
	@if [ ! -e cubeworks-inc.github.io ]; then git clone git@github.com:cubeworks-inc/cubeworks-inc.github.io; fi

develop: all
	when-changed -r templates $(BUILD)

deploy:	all
	@pushd cubeworks-inc.github.io && git add --all && git commit && git push; popd

.PHONY: all setup develop
