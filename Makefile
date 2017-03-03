TARGETS=all check clean clobber distclean install uninstall
TARGET=all

PREFIX=${DESTDIR}/opt
COREDIR=${PREFIX}/bin
SUBDIRS=

ifeq	(${MAKE},gmake)
	INSTALL=ginstall
else
	INSTALL=install
endif

.PHONY: ${TARGETS} ${SUBDIRS}

all::	git-scrub.sh

${TARGETS}::

clobber distclean:: clean

check::	git-scrub.sh
	./git-scrub.sh ${ARGS}

install:: git-scrub.sh
	${INSTALL} -D git-scrub.sh ${COREDIR}/git-scrub

uninstall::
	${RM} ${COREDIR}/git-scrub

ifneq	(,${SUBDIRS})
${TARGETS}::
	${MAKE} TARGET=$@ ${SUBDIRS}
${SUBDIRS}::
	${MAKE} -C $@ ${TARGET}
endif
