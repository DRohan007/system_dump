#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:30780750:7f192c448257c5940871fab6ba9ec3b2351396a9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:29341002:249e27776edb03f1adccd78688c9f72c87699d63 EMMC:/dev/block/bootdevice/by-name/recovery 7f192c448257c5940871fab6ba9ec3b2351396a9 30780750 249e27776edb03f1adccd78688c9f72c87699d63:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
