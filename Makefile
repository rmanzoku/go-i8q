PKG=github.com/rmanzoku/go-i8q
NAME=app

.PHONY: run build deploy

run:
	go run app.go

build:
	go build -o $(NAME) app.go

deploy: build
	scp $(NAME) app1:/tmp/
