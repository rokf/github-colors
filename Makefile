FILE=src/Main.elm
OUTPUT=deploy/elm.js
all:
	elm-make $(FILE) --output=$(OUTPUT)
live:
	elm-live $(FILE) --output $(OUTPUT)
