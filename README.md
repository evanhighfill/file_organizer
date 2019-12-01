# file_organizer

This is a simple shell script to move a certain file extensions from one directory to another. Mainly targeting media files, but can be any format you wish.

Be sure the review the following variables as this will determine where the files are coming from and where they will be placed.
```
INPUT_PATH=F:/DCIM/temp
OUTPUT_PATH=.
VIDEO_PATH=$OUTPUT_PATH/videos
IMAGE_PATH=$OUTPUT_PATH/pictures
```

## Running the media file mover.
From the destination directory, open a Git Bash prompt.

`./mover.sh`

You will then be prompted for what to move.
```
1. Move Videos  
2. Move Pictures
3. Move Both    
CNTL + C to quit
```

The you will need to determin if you wish to move the files or copy them.  Enter either a "M" for more of a "C" for copy.
```
Do you want to copy or move the files? Enter (M) or (C) or (CNTL + C) to quit.
```

If you ever enter the wrong option the you'll receive the following error message.

`You've selected the wrong option.`

To terminate the shell script you can enter CNTL + C at any time.
