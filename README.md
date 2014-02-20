ntpclient-android
=================

This is a forked copy of Larry Doolittle's ntpclient program, 
forked and hacked in a few ways to work on Android devices.

Original: 
* forked from wlach/ntpclient-android: https://github.com/wlach/ntpclient-android
* ntpclient: http://doolittle.icarus.com/ntpclient/

# Building / Installing

* You can import AOSP Manifest or mm build.

```
$ cd [your AOSP/mydroid/]external
$ git clone https://github.com/kinneko/ntpclient-android.git
    
$ cd ntpclient-android
$ export ARCH=arm
$ export CROSS_COMPILE="../../prebuilt/linux-x86/toolchain/arm-eabi-[your gcc version]/bin/arm-eabi-"
$ export TOP="../../"
$ export TARGET_PRODUCT_NAME=[your product name]
$ export VENDER=[your vender name]
$ export BUILD_PRODUCT=${VENDER}_${TARGET_PRODUCT_NAME}
$ export TARGET_PRODUCT=${BUILD_PRODUCT}
$ source ../../build/envsetup.sh
$ mm
```

# Running

* adb shell command line as root user

```
# date
Fri Jan  2 09:02:59 JST 1970

# ntpclient -c 1 -h pool.ntp.org -s
25568 00505.385  107348.0     80.2  1392804224801225.0  42846.7         0

# date
Thu Feb 20 19:12:12 JST 2014
```

* Call ntpclient as service from init.rc.

