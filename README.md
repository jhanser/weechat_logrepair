`Notice: As this bug was fixed by weechat some time ago, this is now obsolete`

# weechat_logrepair
Simple bashscript to repair logs damaged by an unexpected termination of weechat.

## How and Why
If the system unexpectedly comes to a halt, at the end of weechatlogs are some nullbytes written.

grep doesn't like that very much. 
So to make the logs greppable again, you need to remove those nullbytes. This script does that.

## Installation
Copy the script to the desired location.
Optionally set the $PATH-variable accordingly.

The author recommends putting it in /usr/bin/

## Usage
    logrepair.sh </path/to/the/logs/>

Invoke the script - depending on the location an wheter you set the PATH variable accordingly - by calling it and adding the path to the files, you want to operate on.
It is strongly advised to backup the files beforehand.

Currently it works only with files that end with .weechatlog
