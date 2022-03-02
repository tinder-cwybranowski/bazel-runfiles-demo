.PHONY: test
test:
	bazelisk test //DemoLibrary:DemoTests --test_output=all
