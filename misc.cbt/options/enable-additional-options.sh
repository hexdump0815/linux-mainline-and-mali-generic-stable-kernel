#!/bin/bash

cd /compile/source/linux-stable

./scripts/config -d CONFIG_DEBUG_INFO
./scripts/config -d CONFIG_RUNTIME_TESTING_MENU
./scripts/config -d CONFIG_TEST_KMO
./scripts/config -d CONFIG_EXT2_FS
./scripts/config -d CONFIG_EXT3_FS
./scripts/config -d CONFIG_BLK_DEV_RAM
./scripts/config -d CONFIG_BLK_DEV_RAM_COUNT
./scripts/config -d CONFIG_BLK_DEV_RAM_SIZE
./scripts/config --set-val CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE 0x0
./scripts/config -d CONFIG_DRM_RADEON
./scripts/config -d CONFIG_DRM_AMDGPU
./scripts/config -d CONFIG_DRM_ETNAVIV
./scripts/config -d CONFIG_DRM_EXYNOS
./scripts/config -d CONFIG_DRM_LIMA
./scripts/config -d CONFIG_DRM_PANFROST
./scripts/config -d CONFIG_XFS_FS
./scripts/config -d CONFIG_REISERFS_FS
./scripts/config -d CONFIG_OCFS2_FS

./scripts/config -d CONFIG_LOCALVERSION_AUTO
./scripts/config --set-str CONFIG_LOCALVERSION "-stb-cbt"

# unclear if they strictly required to go
#./scripts/config -d CONFIG_I2C_ARB_GPIO_CHALLENGE
#./scripts/config -d CONFIG_I2C_DEMUX_PINCTRL
#./scripts/config -d CONFIG_I2C_CROS_EC
#./scripts/config -d CONFIG_TOUCHSCREEN_ELAN
#./scripts/config -d CONFIG_PINCTRL_TEGRA20
#./scripts/config -d CONFIG_PINCTRL_TEGRA30
#./scripts/config -d CONFIG_PINCTRL_TEGRA114
#./scripts/config -d CONFIG_TEGRA_IOMMU_GART
#./scripts/config -d CONFIG_ARCH_TEGRA_2x_SOC
#./scripts/config -d CONFIG_ARCH_TEGRA_3x_SOC
#./scripts/config -d CONFIG_ARCH_TEGRA_114_SOC
#./scripts/config -d CONFIG_SOC_TEGRA20_VOLTAGE_COUPLER
#./scripts/config -d CONFIG_SOC_TEGRA30_VOLTAGE_COUPLER
#./scripts/config -d CONFIG_ARM_TEGRA20_DEVFREQ
#./scripts/config -d CONFIG_TEGRA20_EMC
#./scripts/config -d CONFIG_TEGRA30_EMC
#./scripts/config --set-val CONFIG_ZBOOT_ROM_BSS=0x0
#./scripts/config --set-val CONFIG_ZBOOT_ROM_TEXT=0x0

for i in `cat /compile/doc/stable/misc.cbt/options/additional-options-*-yes.txt | grep -v ^#`; do
  echo $i
  ./scripts/config -e $i
done

for i in `cat /compile/doc/stable/misc.cbt/options/additional-options-*-mod.txt | grep -v ^#`; do
  echo $i
  ./scripts/config -m $i
done
