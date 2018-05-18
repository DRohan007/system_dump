#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/FOTAKernel:17098028:f36de14399e73bd2312806c408a5a0214aee5ff7; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:11310376:b51d0140fad69d1e428c1744e605dbacf852dfe1 EMMC:/dev/block/bootdevice/by-name/FOTAKernel f36de14399e73bd2312806c408a5a0214aee5ff7 17098028 b51d0140fad69d1e428c1744e605dbacf852dfe1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
