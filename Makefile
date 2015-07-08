BUILD=staticjinja build --outpath=cubeworks-inc.github.io --static=static

build:	setup
	$(BUILD)

setup:
	@if [ ! -e cubeworks-inc.github.io ]; then git clone git@github.com:cubeworks-inc/cubeworks-inc.github.io; fi

develop: update build
	when-changed -r templates $(BUILD) & echo $$! > .when-changed-pid && pushd cubeworks-inc.github.io && python3 -m http.server 8000; popd; kill `cat .when-changed-pid`; rm -f .when-changed-pid

update:
	@pushd cubeworks-inc.github.io && git pull ; popd

deploy:	update build
	@pushd cubeworks-inc.github.io && git add --all && git commit && git push; popd

.PHONY: build setup develop update deploy
