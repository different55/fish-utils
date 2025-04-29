# fish-utils

A grab bag of tiny fish scripts and functions I've collected. They're small, but very handy On My Machine.

I name all my functions and scripts beginning with "," so that I can just type , and press TAB to get a list of all of my own personal functions. This isn't something I invented, but it is something I find handy.

## ,rmount

For [rclone](https://rclone.org/), it takes a remote and mounts it in ~/Remotes with the options I've found most useful.

```
> ,rmount Jaromino:/home Jaromino
[ silently mounts Jaromino at ~/Remote/Jaromino ]
```

I use --volname to set the name of the volume on macOS, I'm not sure what this does on other systems.

## ,usage

Built on du, it scans the current working directory and spits out a report of the files/directories that take up the most space.

By default it does not search hidden files/directories that start with a dot. Feeding it the -a flag will scan everything.

```
> ,usage -a Downloads
 97M	Downloads/PistonCup.stl
227M	Downloads/Legacy-iOS-Kit_macos_v25.01.12
4.4G	Downloads/DVD_VR.dmg
```

## ,upload

For [rclone](https://rclone.org/) again, it copies a file (displaying progress) from the local machine to a specific, hard-coded remote and produces a URL where that file can be accessed, both printed and copied to the clipboard.

```
> ,upload
Transferred:   	    1.201 MiB / 1.201 MiB, 100%, 1.201 MiB/s, ETA 0s
Transferred:            1 / 1, 100%
Elapsed time:         2.8s
https://jaromino.com/Files/Zoodle%20Doing%20Outlining.mp4
```

This one *is* definitely macOS-specific through `pbcopy`.
