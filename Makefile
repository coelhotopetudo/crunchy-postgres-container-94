OSFLAVOR=centos7
pg:
	sudo docker build -t crunchy-pg -f Dockerfile.$(OSFLAVOR) .
	sudo docker tag -f crunchy-pg:latest crunchydata/crunchy-pg
all:
	make pg
default:
	all

