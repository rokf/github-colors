FILE=src/Main.elm
OUTPUT=deploy/elm.js
STATIC=deploy
all:
	elm-make $(FILE) --output=$(OUTPUT)
live:
	elm-live $(FILE) --output=$(OUTPUT) --dir=$(STATIC)
subtree:
	git subtree push --prefix $(STATIC) origin gh-pages
