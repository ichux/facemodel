#!/bin/bash

export PYTHONPATH=$PWD/facenet/src

python facenet/src/validate_on_lfw.py \
	$PWD/images/lfw/lfw_mtcnnpy_160 \
	$PWD/pre-trained-models/20180408-102900.pb \
	--distance_metric 1 \
	--use_flipped_images \
	--subtract_mean \
	--use_fixed_image_standardization
