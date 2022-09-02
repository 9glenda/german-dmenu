DESTDIR:=/bin
PREFIX:=/usr

install:
	echo "hello"
	install main.sh ${PREFIX}${DESTDIR}/german

