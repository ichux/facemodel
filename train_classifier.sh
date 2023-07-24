#!/bin/bash

export PYTHONPATH=$PWD/facenet/src

mkdir -p models

# python facenet/src/classifier.py TRAIN $PWD/images/lfw/lfw_mtcnnpy_160 \
# $PWD/models/model-$(date +%Y%m%dT%H%M%S-%s-%Z).pb $PWD/models/lfw_classifier.pkl --batch_size 1000 \
# --min_nrof_images_per_class 40 --nrof_train_images_per_class 35 --use_split_dataset

python facenet/src/classifier.py TRAIN $PWD/images/lfw/lfw_mtcnnpy_160 \
  $PWD/pre-trained-models/20180408-102900/20180408-102900.pb \
  $PWD/pre-trained-models/20180408-102900/lfw_classifier.pkl --batch_size 1000 \
--min_nrof_images_per_class 40 --nrof_train_images_per_class 35 --use_split_dataset

