dkapp
=====

Simple command alias for docker app simple run once.

Description
-----------

	dkapp xxx/yyy zzz

=

	docker run --rm -it -v $(pwd):/mount xxx/yyy /mount/zzz

The image must have an entry point.

Install
-------

### for Windows

Download a file by following commands.

	bitsadmin.exe /TRANSFER fileget https://raw.githubusercontent.com/kazaoki/dkapp/master/dkapp.cmd %CD%/dkapp.cmd

Then, move the file to PATH directory.

### for Mac, Linux

Download a file by following commands.

	sudo curl -o /usr/local/bin/dkapp https://raw.githubusercontent.com/kazaoki/dkapp/master/dkapp
	sudo chmod 0777 /usr/local/bin/dkapp


License
-------

MIT
