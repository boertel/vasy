# Vas-y

## Install

```
./install.sh [~/.bash_profile]
```

this will create ```/usr/local/bin/resolve_vasy``` and a function ```vasy``` to actually execute ```cd```


## .vasy file

```resolve_vasy``` looks into ```~/.vasy``` file for <key>:<value> pair. This file is some sort of yaml file, so you can have a tree of directory.
Example:
```
project1:
    app-1: ~/project1/app1
    app-2: ~/project2/app2
project2:
    app-a: ~/project2/appA
simple: ~/simple/
```

and you would use ```vasy``` as such:
```
$ vasy project1 app-1
cd ~/project1/app1
```

```
$ vasy project2 app-a
cd ~/project/appA
```

```
$ vasy simple
cd ~/simple/
```

## Notes
```vasy``` comes from *vas-y* French for *go on*
