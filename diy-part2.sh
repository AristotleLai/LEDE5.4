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

wget -c -O /tmp/master.zip https://github.com/kenzok8/openwrt-packages/archive/refs/heads/master.zip
sudo unzip /tmp/master.zip
rm -rf /tmp/master.zip
wget -c -O /tmp/master.zip https://github.com/kenzok8/small/archive/refs/heads/master.zip
sudo unzip /tmp/master.zip
rm -rf /tmp/master.zip

cp -r /tmp/small-master/trojan-plus/ /home/bensonlai/lede/package/lean/
cp -r /tmp/small-master/trojan-go/ /home/bensonlai/lede/package/lean/
cp -r /tmp/small-master/chinadns-ng/ /home/bensonlai/lede/package/lean/
cp -r /tmp/small-master/brook/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/screenshot/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/naiveproxy/ /home/bensonlai/lede/package/lean/

cp -r /tmp/openwrt-packages-master/AdGuardHome/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/luci-app-adguardhome/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/smartdns/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/luci-app-smartdns/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/luci-app-passwall/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/luci-app-openclash/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/luci-app-smartdns/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/luci-app-clash/ /home/bensonlai/lede/package/lean/



cp -r /tmp/openwrt-packages-master/luci-theme-argon_new/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/luci-theme-atmaterial/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/luci-theme-opentomato/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/luci-theme-opentomcat/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/luci-theme-opentopd/ /home/bensonlai/lede/package/lean/
cp -r /tmp/openwrt-packages-master/luci-app-argon-config/ /home/bensonlai/lede/package/lean/

cp -r /tmp/openwrt-packages-master/luci-theme-argon_new/ /home/bensonlai/lede/feeds/luci/themes
cp -r /tmp/openwrt-packages-master/luci-theme-atmaterial/ /home/bensonlai/lede/feeds/luci/themes
cp -r /tmp/openwrt-packages-master/luci-theme-opentomato/ /home/bensonlai/lede/feeds/luci/themes
cp -r /tmp/openwrt-packages-master/luci-theme-opentomcat/ /home/bensonlai/lede/feeds/luci/themes
cp -r /tmp/openwrt-packages-master/luci-theme-opentopd/ /home/bensonlai/lede/feeds/luci/themes
cp -r /tmp/openwrt-packages-master/luci-app-argon-config/ /home/bensonlai/lede/feeds/luci/themes
