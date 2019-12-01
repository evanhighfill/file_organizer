#!/bin/bash

INPUT_PATH=F:/DCIM/temp
OUTPUT_PATH=.
VIDEO_PATH=$OUTPUT_PATH/videos
IMAGE_PATH=$OUTPUT_PATH/pictures
VIDEO_EXTENSION=*.MOV
IMAGE_EXTENSION=*.JPG

function processVideos () {
    mkdir -p $VIDEO_PATH
    $cmd -i $INPUT_PATH/$VIDEO_EXTENSION -t $VIDEO_PATH
}
function processImages () {
    mkdir -p $IMAGE_PATH
    $cmd -i $INPUT_PATH/$IMAGE_EXTENSION -t $IMAGE_PATH
}
function processBoth () {
    processVideos
    processImages
}

function moveOrCopy () {
# moveOrCopy sets the value of $cmd.  If its empty call the function because it hasn't been set.
    while [ true ]
    do
        echo "Do you want to copy or move the files? Enter (M) or (C) or (CNTL + C) to quit."
        read cmdInput
        if [ $cmdInput = "M" ] || [ $cmdInput = "m" ]; then
            cmd=mv
            break
        elif [ $cmdInput = "C" ] || [ $cmdInput = "c" ]; then
            cmd=cp
            break
        else
            echo "You've selected the wrong option." 
        fi
    done
}

while [ true ]
do
    clear
    echo "1. Move Videos"
    echo "2. Move Pictures"
    echo "3. Move Both"
    echo "CNTL + C to quit"
    read response
    if [ $response = 1 ] || [ $response = 2 ] || [ $response = 3 ]; then
        moveOrCopy
    else
        echo "You've selected the wrong option." 
    fi

    if [ $response = 1 ]; then
        processVideos
    elif [ $response = 2 ]; then
        processImages 
    elif [ $response = 3 ]; then
        processBoth
    fi
done 
