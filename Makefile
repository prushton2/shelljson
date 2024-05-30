install:
	make transpile
	pyinstaller --onefile build/main.py
	mv dist/main /usr/bin/sjson
	make clean
uninstall:
	rm /usr/bin/sjson
clean:
	rm -rf build
	rm -rf dist
	rm main.spec
test:
transpile:
	bython src -c -t -e src/main.by -o build/
test:
	make transpile
	echo '{"a": "b"}' | python build/main.py "a"
	echo '{"a": {"b": "c"}}' | python build/main.py "a.b"
	echo '{"a.b": {"b": "c"}}' | python build/main.py "a\.b.b"
	echo '{"a.b": {"b": {"c": "d"}}}' | python build/main.py "a\.b.b"
