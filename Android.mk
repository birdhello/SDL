LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_SRC_FILES := \
        src/audio/SDL_mixer.c \
        src/audio/SDL_audiocvt.c \
        src/audio/SDL_audiotypecvt.c \
        src/atomic/SDL_spinlock.c \
        src/atomic/SDL_atomic.c \
        src/stdlib/SDL_malloc.c \
        src/stdlib/SDL_stdlib.c \
        src/stdlib/SDL_string.c \
        src/SDL_dataqueue.c \
        src/cpuinfo/SDL_cpuinfo.c \
        src/timer/unix/SDL_systimer.c \

LOCAL_CFLAGS += -DGL_GLEXT_PROTOTYPES
LOCAL_CFLAGS += \
	-Wall -Wextra \
	-Wdocumentation \
	-Wdocumentation-unknown-command \
	-Wmissing-prototypes \
	-Wunreachable-code-break \
	-Wunneeded-internal-declaration \
	-Wmissing-variable-declarations \
	-Wfloat-conversion \
	-Wshorten-64-to-32 \
	-Wunreachable-code-return \
	-Wshift-sign-overflow \
	-Wstrict-prototypes \
	-Wkeyword-macro \

LOCAL_CFLAGS += -Wno-unused-parameter -Wno-sign-compare

LOCAL_STATIC_LIBRARIES := cpufeatures

LOCAL_MODULE := libSDL_cvt_mixer

include $(BUILD_STATIC_LIBRARY)
$(call import-module,android/cpufeatures)
