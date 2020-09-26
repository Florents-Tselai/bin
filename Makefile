SHELL:=/bin/bash

.PHONY: make2graph
make2graph:
	cd make2graph-src && $(MAKE) && mv make2graph ..


all: make2graph