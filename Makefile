.PHONY: parser parser-dev runner

parser:
	cd parser && make

parser-dev:
	cd parser && make devimage

runner:
	cd runner && make