CC=clang
CFLAGS=-g
LDLIBS=-lbluetooth -lopenobex

ALL: local_scan port_connect sdp_find_pbap README.html

README.html: README.md
	markdown README.md > README.html

clean:
	rm -f README.html
	rm -f local_scan
	rm -f port_connect
	rm -f sdp_find_pbap
