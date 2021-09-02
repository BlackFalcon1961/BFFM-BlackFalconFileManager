TARGET := 3DS

NAME := BFFM

BUILD_DIR := build
OUTPUT_DIR := output
INCLUDE_DIRS := include
SOURCE_DIRS := source
ROMFS_DIR := romfs

LIBRARY_DIRS += $(DEVKITPRO)/libctru $(DEVKITPRO)/portlibs/armv6k $(DEVKITPRO)/portlibs/3ds
LIBRARIES += curl mbedtls mbedx509 mbedcrypto jansson z citro3d ctru

BUILD_FLAGS := -Wno-format-truncation

VERSION := 1.0

DESCRIPTION := Gestionnaire de fichiers pour 3DS/2DS
AUTHOR := Steveice10 / BlackFalcon1961

PRODUCT_CODE := CTR-P-BFFM
UNIQUE_ID := 0xF8002

ICON_FLAGS := --flags visible,ratingrequired,recordusage --cero 153 --esrb 153 --usk 153 --pegigen 153 --pegiptr 153 --pegibbfc 153 --cob 153 --grb 153 --cgsrr 153

BANNER_AUDIO := meta/audio_3ds.wav
BANNER_IMAGE := meta/banner_3ds.png
ICON := meta/icon_3ds.png
LOGO := meta/homebrewlogo.bin

# INTERNAL #

include buildtools/make_base
