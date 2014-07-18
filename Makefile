GRUNT=node_modules/grunt-cli/bin/grunt
NPM=$(shell which npm)
TARGET=$(shell date +"%Y-%m-%d")

grunt:
	${GRUNT}

install:
	${NPM} install

target:
	mkdir -p src/${TARGET}
	touch src/${TARGET}/answer.js
	rm -rf src/codeiq
	cd src;ln -s ${TARGET} codeiq
	mkdir -p test/${TARGET}
	touch test/${TARGET}/answer-test.html
	rm -rf test/codeiq
	cd test;ln -s ${TARGET} codeiq

test-run:
	${GRUNT} test
