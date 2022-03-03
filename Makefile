config ?= remote

.PHONY: test
test:
	bazelisk test //DemoLibrary:DemoTests --config=$(config)
