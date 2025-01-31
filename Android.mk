#
# Copyright (C) 2023 Lineage Os
#
# SPDX-License-Identifier: Apache-2.0
# SPDX-License-Identifier: GPL-2.0-only
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),X695C)

$(info Including firmware for Infinix Note 10 Pro...)

FIRMWARE_IMAGES := $(wildcard $(LOCAL_PATH)/images/*)

$(foreach f, $(notdir $(FIRMWARE_IMAGES)), \
    $(call add-radio-file,images/$(f)))

endif