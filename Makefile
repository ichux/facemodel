# Do not remove this block. It is used by the 'help' rule when
# constructing the help output.
# help:
# help: facemodel Makefile help
# help:

UNAME := $(shell uname)

.PHONY: help
# help: help				- Please use "make <target>" where <target> is one of
help:
	@grep "^# help\:" Makefile | sed 's/\# help\: //' | sed 's/\# help\://'

.PHONY: 1
# help: 1				- Step 1: clone and configure
1:
	@git clone git@github.com:ichux/facenet.git
	@git config --global --add safe.directory $PWD/facenet

.PHONY: 2
# help: 2				- Step 2: make the sh files executable, if necessary
2:
	@chmod +x convert_lfw.sh validate_on_lfw.sh train_classifier.sh downloads.sh classify.sh

.PHONY: 3
# help: 3				- Step 3: download essential files
3:
	@./downloads.sh

.PHONY: 4
# help: 4				- Step 4: extract the lfw.zip
4:
	@rm -rf images/lfw && mkdir -p images/lfw/raw/ && unzip -qo images/lfw.zip -d images/lfw/raw/

.PHONY: 5
# help: 5				- Step 5: extract the lfw.tgz
5:
	@rm -rf images/lfw && mkdir -p images/lfw/raw/ && tar xvf images/lfw.tgz -C images/lfw/raw --strip-components=1

.PHONY: 6
# help: 6				- Step 6: extract both lfw.tgz and lfw.zip
6:
	@rm -rf images/lfw && mkdir -p images/lfw/raw/ && \
	unzip -qo images/lfw.zip -d images/lfw/raw/ && \
	tar xvf images/lfw.tgz -C images/lfw/raw --strip-components=1

.PHONY: 7
# help: 7				- Step 7: install essential libraries
7:
	@pip install -r facenet/requirements.txt
