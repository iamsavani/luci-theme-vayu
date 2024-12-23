include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI theme Vayu
LUCI_DEPENDS:=
PKG_VERSION:=1.0
PKG_LICENSE:=Apache-2.0

define Package/luci-theme-vayu/postrm
#!/bin/sh
[ -n "$${IPKG_INSTROOT}" ] || {
	uci -q delete luci.themes.Vayu
	uci commit luci
}
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature