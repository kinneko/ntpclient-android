ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES:= \
	$(KERNEL_HEADERS) \
	$(LOCAL_PATH)

LOCAL_CFLAGS:=-O2 -std=c99 -W -Wall \
	-Wpointer-arith -Wcast-align -Wcast-qual -Wshadow \
	-Waggregate-return -Wnested-externs -Winline -Wwrite-strings \
	-Wstrict-prototypes \
	-DENABLE_DEBUG \
	-DENABLE_REPLAY

LOCAL_SRC_FILES := \
	adjtimex_android.c \
	ntpclient.c \
	phaselock.c
LOCAL_MODULE := ntpclient
LOCAL_LDLIBS:=-lrt

LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

endif

