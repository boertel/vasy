# Vas-y

## Install

```
./install.sh [~/.bash_profile]
```

this will create ```/usr/local/bin/resolve_vasy``` and a function ```vasy``` to actually execute ```cd```


## .vasy file

```resolve_vasy``` looks into ```~/.vasy``` file for <key>:<value> pair.
Example:
```
app-1: ~/project1/app1
app-2: ~/project2/app2
simple: ~/simple/
```

and you would use ```vasy``` as such:
```
$ vasy simple
cd ~/simple/
```

## Notes
```vasy``` comes from *vas-y* French for *go on*
