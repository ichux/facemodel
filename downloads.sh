#!/bin/bash

curl -L "https://drive.google.com/uc?id=1iuUJrIQTwSOMc9la6QxJ8U7pmCYuvMmy&export=download&confirm=t" -o images/lfw.tgz \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0" \
  -H "Host: drive.google.com" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8" \
  -H "Accept-Language: en-US,en;q=0.5" -H "Accept-Encoding: gzip, deflate, br" \
  -H "Connection: keep-alive" && echo -e "images/lfw.tgz\n\n"

curl -L "https://drive.google.com/uc?id=1IlMHjZRp-MWJ0-tBQezbVwBSiC21Rgio&export=download&confirm=t" -o images/lfw.zip \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0" \
  -H "Host: drive.google.com" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8" \
  -H "Accept-Language: en-US,en;q=0.5" -H "Accept-Encoding: gzip, deflate, br" \
  -H "Connection: keep-alive" && echo -e "images/lfw.zip\n\n"

curl -L "https://drive.google.com/uc?id=1AzLDTmdYFfjIQsbaW3d_DjPMdN_LWcg4&export=download&confirm=t" -o pre-trained-models/20180402-114759.zip \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0" \
  -H "Host: drive.google.com" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8" \
  -H "Accept-Language: en-US,en;q=0.5" -H "Accept-Encoding: gzip, deflate, br" \
  -H "Connection: keep-alive" && echo -e "pre-trained-models/20180402-114759.zip\n\n"

curl -L "https://drive.google.com/uc?id=1YQclsChWzfPeVNV1l1PQi9-VZ0OECFFP&export=download&confirm=t" -o pre-trained-models/20180408-102900.zip \
  -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0" \
  -H "Host: drive.google.com" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8" \
  -H "Accept-Language: en-US,en;q=0.5" -H "Accept-Encoding: gzip, deflate, br" \
  -H "Connection: keep-alive" && echo -e "pre-trained-models/20180408-102900.zip\n\n"
