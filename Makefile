GD=/opt/homebrew/Cellar/gd/2.3.3_6
INCS=-I/usr/local/include -I${GD}/include
LIBS=-L/usr/local/lib -lgd -lm -L${GD}/lib
CFLAGS=-g -Wall ${INCS}
LDFLAGS=-g
OBJS=\
	ipv4-heatmap.o \
	xy_from_ip.o \
	hilbert.o \
	morton.o \
	annotate.o \
	shade.o \
	legend.o \
	bbox.o \
	text.o \
	cidr.o

all: ipv4-heatmap

ipv4-heatmap: ${OBJS}
	${CC} ${LDFLAGS} -o $@ ${OBJS} ${LIBS}

clean:
	rm -f ${OBJS}
	rm -f ipv4-heatmap

install: ipv4-heatmap
	install -C -m 755 ipv4-heatmap /usr/local/bin
	install -C -m 755 ipv4-heatmap.1 /usr/local/man/man1
