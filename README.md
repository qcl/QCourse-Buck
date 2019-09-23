# QCourse-Buck
Buck demo for iPlayground 2019, [slides is here](https://speakerdeck.com/qcl/using-buck-to-save-ios-project-build-time).

Note that this demo is running on Xcode 10, there could be some issues while trying to run demos with Xcode 11.

## Demo 0
```
$ git checkout demo/0
```
This branch contains only source code files and resources. No buck file.

### Prepare a clean environment

```
$ make clean
$ make kill_buckd
```

## Demo 1
```
$ git checkout demo/1
```

This branch contains basic buck build file and `.buckconfig`.

### Build by buck
```
$ make build
```

### Run on simulator
```
$ make debug
```

### Generate Xcode project file
```
$ make project
```

## Demo 2
```
$ git checkout demo/2
```

This branch integrated with `Podfile`.
### Build by buck
```
$ make build
```

### Run on simulator
```
$ make debug
```

### Generate Xcode project file
```
$ make project
```
