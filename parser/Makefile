default: image

image: gox
	docker build -t bazooka/parser-golang .

gox:
	gox -osarch="linux/amd64" -output="main"
