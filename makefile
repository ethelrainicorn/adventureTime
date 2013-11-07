default:
	mkdir -p generated_js
	./node_modules/.bin/coffee --output generated_js --compile src
	cp -r src/vendor generated_js/
	./node_modules/.bin/browserify -d ./generated_js/main.js >./public/adventureTime.js
	rm -rf generated_js
