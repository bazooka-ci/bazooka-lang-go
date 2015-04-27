default: parser

.PHONY: parser runner

parser:
	cd parser && make

runner:
	cd runner && make
