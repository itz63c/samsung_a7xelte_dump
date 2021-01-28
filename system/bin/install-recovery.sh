#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:21944320:0e1f31a83fa52f7e785f5eb73e9998cc329e0c18; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:18960384:2b9c9ae551de573e1bb3503a956b796b2a06f85c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY 0e1f31a83fa52f7e785f5eb73e9998cc329e0c18 21944320 2b9c9ae551de573e1bb3503a956b796b2a06f85c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
