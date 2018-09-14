PKG=github.com/rmanzoku/go-i8q
NAME=app

.PHONY: run build deploy

run:
	go run main.go

build:
	go build -o $(NAME) main.go

deploy: build
	scp $(NAME) app1:/tmp/
