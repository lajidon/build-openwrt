#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt for Amlogic s9xxx tv box
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/coolsnowwolf/lede / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}

# 主题
git clone https://github.com/kenzok78/luci-theme-argonne.git package/luci-theme-argonne

##############################################################################################
# 实时监控
git clone https://github.com/sirpdboy/luci-app-netdata.git package/luci-app-netdata

#释放内存
git clone https://github.com/chinaboy2345/luci-app-ramfree.git package/luci-app-ramfree

#磁盘管理
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman

#  关机
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff

#docker
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman

#ShadowSocksR Plus+
git clone https://github.com/fw876/helloworld.git package/helloworld

#openclash
git clone https://github.com/vernesong/OpenClash.git package/OpenClash

#文件助手
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-fileassistant package/luci-app-fileassistant
