default: parser

.PHONY: parser runner

parser:
	cd parser && make

push-parser:
	./parser/push.sh

runner:
	cd runner && make
