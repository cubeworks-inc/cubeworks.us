BUILD=staticjinja build --outpath=built --static=static

all:
	$(BUILD)

develop:
	when-changed -r templates $(BUILD)

.PHONY: all
