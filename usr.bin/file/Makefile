# $OpenBSD: Makefile,v 1.17 2017/06/28 13:37:56 brynet Exp $

PROG=   file
SRCS=   file.c magic-dump.c magic-load.c magic-test.c magic-common.c \
	text.c xmalloc.c
MAN=	file.1 magic.5

CDIAGFLAGS+= -Wno-long-long -Wall -W -Wnested-externs -Wformat=2
CDIAGFLAGS+= -Wmissing-prototypes -Wstrict-prototypes -Wmissing-declarations
CDIAGFLAGS+= -Wwrite-strings -Wshadow -Wpointer-arith -Wsign-compare
CDIAGFLAGS+= -Wundef -Wbad-function-cast -Winline -Wcast-align

MAGIC=		/etc/magic
MAGICOWN=	root
MAGICGRP=	bin
MAGICMODE=	444

CLEANFILES+=	magic post-magic

MAG1=		$(.CURDIR)/magdir/Header \
		$(.CURDIR)/magdir/Localstuff \
		$(.CURDIR)/magdir/OpenBSD
MAGFILES=	$(.CURDIR)/magdir/[0-9a-z]*

post-magic: $(MAGFILES)
	for i in ${.ALLSRC:N*.orig}; do \
		echo $$i; \
	done|sort|xargs -n 1024 cat >$(.TARGET)

magic: $(MAG1) post-magic
	cat ${MAG1} post-magic >$(.TARGET)

afterinstall:
	${INSTALL} ${INSTALL_COPY} -o $(MAGICOWN) -g $(MAGICGRP) \
		-m $(MAGICMODE) magic $(DESTDIR)$(MAGIC)

all: file magic

.include <bsd.prog.mk>
