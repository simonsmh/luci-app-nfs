#
# Copyright (C) 2016 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-nfs

# Version == major.minor.patch
# increase "minor" on new functionality and "patch" on patches/optimization
PKG_VERSION:=1.0.0

# Release == build
# increase on changes of translation files
PKG_RELEASE:=1

PKG_MAINTAINER:=simonsmh

# LuCI specific settings
LUCI_TITLE:=LuCI Support for NFS
LUCI_DEPENDS:=+nfs-kernel-server-utils
LUCI_PKGARCH:=all

define Package/$(PKG_NAME)/config
# shown in make menuconfig <Help>
help
		$(LUCI_TITLE)
		.
		Version: $(PKG_VERSION)-$(PKG_RELEASE)
		$(PKG_MAINTAINER)
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature

