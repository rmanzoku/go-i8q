PKG=github.com/rmanzoku/go-i8q
NAME=app

.PHONY: run build deploy

run:
	go run app.go

build:
	go build -o $(NAME) app.go

schema:
	scp schema.sql app40:~/schema.sql
	ssh app40 "./schemalex schema.sql \"mysql://isucon:isucon@tcp(localhost:3306)/torb\""

deploy: build
	scp $(NAME) app1:/tmp/
