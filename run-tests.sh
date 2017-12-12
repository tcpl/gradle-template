#!/bin/bash

docker build -t ri-webtests . && docker run -it --rm -v `pwd`:/app ri-webtests
