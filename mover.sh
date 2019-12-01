#!/bin/bash

INPUT_PATH=F:/DCIM/temp
OUTPUT_PATH=test
VIDEO_PATH=$OUTPUT_PATH/videos
IMAGE_PATH=$OUTPUT_PATH/pictures
VIDEO_EXTENSION=*.MOV
IMAGE_EXTENSION=*.JPG

function moveVideos () {
    mkdir -p $VIDEO_PATH
    mv $INPUT_PATH/$VIDEO_EXTENSION -t $VIDEO_PATH
}
function moveImages () {
    mkdir -p $IMAGE_PATH
    mv $INPUT_PATH/$IMAGE_EXTENSION -t $IMAGE_PATH
}
function moveBoth () {
    moveVideos
    moveImages
}

while [ true ]
do
    clear
    echo "1. Move Videos"
    echo "2. Move Pictures"
    echo "3. Move Both"
    echo "CNTL + C to quit"
    read response
    if [ $response = 1 ]; then
        moveVideos
    elif [ $response = 2 ]; then
        moveImages 
    elif [ $response = 3 ]; then
        moveBoth
    else
        echo "You've selected the wrong option dingus." 
    fi
done 
