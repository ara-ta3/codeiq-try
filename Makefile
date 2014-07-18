GRUNT=node_modules/grunt-cli/bin/grunt
NPM=$(shell which npm)
TARGET=$(shell date +"%Y/%m/%d")

grunt:
	${GRUNT}

install:
	${NPM} install

target:
	rm -rf src/codeiq
	ln -s src/${TARGET} src/codeiq
	rm -rf test/codeiq
	ln -s test/${TARGET} src/codeiq
