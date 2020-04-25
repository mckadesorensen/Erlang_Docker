SELF_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
DIST_DIR := ${SELF_DIR}/dist

.ONESHELL:

.PHONY: container-shell setup-erlang

image: build/erlang.Dockerfile
	cd build && \
	docker build -f erlang.Dockerfile -t run_erlang .

container-shell:
	docker run -it --rm \
		-v ${PROJECT_ROOTDIR}:/root/ \
		--name=erlang \
		--workdir="/root/" \
		run_erlang:latest

download-erlang:
	wget http://www.erlang.org/download/otp_src_22.3.tar.gz
	tar -zxf otp_src_22.3.tar.gz
	cd opt_src_22.3
	export ERL_TOP=`pwd`

setup-erlang: download-erlang
	# cd
	cd opt_src_22.3
