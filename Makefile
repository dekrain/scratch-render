ESLINT=./node_modules/.bin/eslint
WEBPACK=./node_modules/.bin/webpack --progress --colors
WEBPACK_DEV_SERVER=./node_modules/.bin/webpack-dev-server
# ------------------------------------------------------------------------------

build:
	$(WEBPACK)

watch:
	$(WEBPACK) --watch --watch-poll

serve:
	$(WEBPACK_DEV_SERVER)

# ------------------------------------------------------------------------------

lint:
	$(ESLINT) ./src/*.js
	$(ESLINT) ./src/**/*.js

test:
	@make lint

# ------------------------------------------------------------------------------

.PHONY: build watch serve lint test
