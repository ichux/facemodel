#!/bin/bash

export PYTHONPATH=$PWD/facenet/src

for N in {1..4};
do 
	python facenet/src/align/align_dataset_mtcnn.py \
	$PWD/images/lfw/raw $PWD/images/lfw/lfw_mtcnnpy_160 \
	--image_size 160 --margin 32 --random_order --gpu_memory_fraction 0.25 & 
done