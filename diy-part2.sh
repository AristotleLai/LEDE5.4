#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.3/g' package/base-files/files/bin/config_generate
wget -c -O $GITHUB_WORKSPACE/openwrt/master.zip https://github.com/kenzok8/openwrt-packages/archive/refs/heads/master.zip
sudo unzip $GITHUB_WORKSPACE/openwrt/master.zip
rm -rf $GITHUB_WORKSPACE/openwrt/master.zip
wget -c -O $GITHUB_WORKSPACE/openwrt/master.zip https://github.com/kenzok8/small/archive/refs/heads/master.zip
sudo unzip $GITHUB_WORKSPACE/openwrt/master.zip
rm -rf $GITHUB_WORKSPACE/openwrt/master.zip
wget -c -O $GITHUB_WORKSPACE/openwrt/master.zip https://github.com/destan19/OpenAppFilter/archive/refs/heads/master.zip
sudo unzip $GITHUB_WORKSPACE/openwrt/master.zip
rm -rf $GITHUB_WORKSPACE/openwrt/master.zip
cp -r $GITHUB_WORKSPACE/openwrt/small-master/trojan-plus/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/small-master/trojan-go/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/small-master/chinadns-ng/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/small-master/brook/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/screenshot/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/naiveproxy/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/AdGuardHome/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-app-adguardhome/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/smartdns/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-app-smartdns/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-app-passwall/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-app-openclash/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-app-smartdns/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-app-clash/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/OpenAppFilter-master/luci-app-oaf/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/OpenAppFilter-master/oaf/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/OpenAppFilter-master/open-app-filter/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-theme-argon_new/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-theme-atmaterial/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-theme-opentomato/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-theme-opentomcat/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-theme-opentopd/ $GITHUB_WORKSPACE/openwrt/package/lean/
cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-app-argon-config/ $GITHUB_WORKSPACE/openwrt/package/lean/
# cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-theme-argon_new/ $GITHUB_WORKSPACE/openwrt/feeds/luci/themes
# cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-theme-atmaterial/ $GITHUB_WORKSPACE/openwrt/feeds/luci/themes
# cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-theme-opentomato/ $GITHUB_WORKSPACE/openwrt/feeds/luci/themes
# cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-theme-opentomcat/ $GITHUB_WORKSPACE/openwrt/feeds/luci/themes
# cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-theme-opentopd/ $GITHUB_WORKSPACE/openwrt/feeds/luci/themes
#cp -r $GITHUB_WORKSPACE/openwrt/openwrt-packages-master/luci-app-argon-config/ $GITHUB_WORKSPACE/openwrt/feeds/luci/themes
